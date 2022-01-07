
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;
struct ldc_channel {scalar_t__ chan_state; int tx_tail; int tx_head; int id; } ;


 int EAGAIN ;
 int EBUSY ;
 int EMSGSIZE ;
 int LDC_ABORT (struct ldc_channel*) ;
 scalar_t__ LDC_CHANNEL_UP ;
 unsigned int LDC_PACKET_SIZE ;
 struct ldc_packet* data_get_tx_packet (struct ldc_channel*,unsigned long*) ;
 int memcpy (struct ldc_packet*,void const*,unsigned int) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;
 unsigned long sun4v_ldc_tx_get_state (int ,int *,int *,scalar_t__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int write_raw(struct ldc_channel *lp, const void *buf, unsigned int size)
{
 struct ldc_packet *p;
 unsigned long new_tail, hv_err;
 int err;

 hv_err = sun4v_ldc_tx_get_state(lp->id, &lp->tx_head, &lp->tx_tail,
     &lp->chan_state);
 if (unlikely(hv_err))
  return -EBUSY;

 if (unlikely(lp->chan_state != LDC_CHANNEL_UP))
  return LDC_ABORT(lp);

 if (size > LDC_PACKET_SIZE)
  return -EMSGSIZE;

 p = data_get_tx_packet(lp, &new_tail);
 if (!p)
  return -EAGAIN;

 memcpy(p, buf, size);

 err = send_tx_packet(lp, p, new_tail);
 if (!err)
  err = size;

 return err;
}
