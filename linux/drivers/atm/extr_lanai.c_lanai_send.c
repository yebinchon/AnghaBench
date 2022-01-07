
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; int len; } ;
struct TYPE_6__ {struct atm_vcc* atmvcc; } ;
struct lanai_vcc {TYPE_2__ tx; int * vbase; } ;
struct lanai_dev {int dummy; } ;
struct TYPE_7__ {int aal; } ;
struct atm_vcc {int vci; TYPE_3__ qos; TYPE_1__* dev; scalar_t__ dev_data; } ;
struct TYPE_8__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {scalar_t__ dev_data; } ;




 int ATM_CELL_SIZE ;
 TYPE_4__* ATM_SKB (struct sk_buff*) ;
 int DPRINTK (char*,int,...) ;
 int EINVAL ;
 int cpu_to_be32s (int *) ;
 int lanai_free_skb (struct atm_vcc*,struct sk_buff*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int vcc_sklist_lock ;
 int vcc_tx_aal0 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*) ;
 int vcc_tx_aal5 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*) ;

__attribute__((used)) static int lanai_send(struct atm_vcc *atmvcc, struct sk_buff *skb)
{
 struct lanai_vcc *lvcc = (struct lanai_vcc *) atmvcc->dev_data;
 struct lanai_dev *lanai = (struct lanai_dev *) atmvcc->dev->dev_data;
 unsigned long flags;
 if (unlikely(lvcc == ((void*)0) || lvcc->vbase == ((void*)0) ||
       lvcc->tx.atmvcc != atmvcc))
  goto einval;
 ATM_SKB(skb)->vcc = atmvcc;
 switch (atmvcc->qos.aal) {
  case 128:
   read_lock_irqsave(&vcc_sklist_lock, flags);
   vcc_tx_aal5(lanai, lvcc, skb);
   read_unlock_irqrestore(&vcc_sklist_lock, flags);
   return 0;
  case 129:
   if (unlikely(skb->len != ATM_CELL_SIZE-1))
    goto einval;

   cpu_to_be32s((u32 *) skb->data);
   read_lock_irqsave(&vcc_sklist_lock, flags);
   vcc_tx_aal0(lanai, lvcc, skb);
   read_unlock_irqrestore(&vcc_sklist_lock, flags);
   return 0;
 }
 DPRINTK("lanai_send: bad aal=%d on vci=%d\n", (int) atmvcc->qos.aal,
     atmvcc->vci);
    einval:
 lanai_free_skb(atmvcc, skb);
 return -EINVAL;
}
