
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;
struct ldc_channel {unsigned int rx_head; unsigned int rx_tail; scalar_t__ chan_state; struct ldc_packet* rx_base; int id; } ;


 int ECONNRESET ;
 int EINVAL ;
 int LDC_ABORT (struct ldc_channel*) ;
 scalar_t__ LDC_CHANNEL_DOWN ;
 scalar_t__ LDC_CHANNEL_RESETTING ;
 unsigned int LDC_PACKET_SIZE ;
 int __set_rx_head (struct ldc_channel*,unsigned long) ;
 int memcpy (void*,struct ldc_packet*,unsigned int) ;
 unsigned long rx_advance (struct ldc_channel*,unsigned int) ;
 unsigned long sun4v_ldc_rx_get_state (int ,unsigned int*,unsigned int*,scalar_t__*) ;

__attribute__((used)) static int read_raw(struct ldc_channel *lp, void *buf, unsigned int size)
{
 struct ldc_packet *p;
 unsigned long hv_err, new;
 int err;

 if (size < LDC_PACKET_SIZE)
  return -EINVAL;

 hv_err = sun4v_ldc_rx_get_state(lp->id,
     &lp->rx_head,
     &lp->rx_tail,
     &lp->chan_state);
 if (hv_err)
  return LDC_ABORT(lp);

 if (lp->chan_state == LDC_CHANNEL_DOWN ||
     lp->chan_state == LDC_CHANNEL_RESETTING)
  return -ECONNRESET;

 if (lp->rx_head == lp->rx_tail)
  return 0;

 p = lp->rx_base + (lp->rx_head / LDC_PACKET_SIZE);
 memcpy(buf, p, LDC_PACKET_SIZE);

 new = rx_advance(lp, lp->rx_head);
 lp->rx_head = new;

 err = __set_rx_head(lp, new);
 if (err < 0)
  err = -ECONNRESET;
 else
  err = LDC_PACKET_SIZE;

 return err;
}
