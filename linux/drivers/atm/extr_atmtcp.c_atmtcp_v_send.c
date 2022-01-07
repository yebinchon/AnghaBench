
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct atmtcp_hdr {int length; void* vci; void* vpi; } ;
struct atmtcp_dev_data {struct atm_vcc* vcc; } ;
struct TYPE_4__ {scalar_t__ traffic_class; } ;
struct TYPE_5__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_3__* stats; int (* push ) (struct atm_vcc*,struct sk_buff*) ;int (* pop ) (struct atm_vcc*,struct sk_buff*) ;int vci; int vpi; int dev; TYPE_2__ qos; } ;
struct TYPE_6__ {int rx; int tx; int tx_err; } ;


 scalar_t__ ATM_NONE ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOLINK ;
 int GFP_ATOMIC ;
 struct atmtcp_dev_data* PRIV (int ) ;
 struct sk_buff* atm_alloc_charge (struct atm_vcc*,int,int ) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int htonl (int) ;
 void* htons (int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,struct atmtcp_hdr*,int) ;
 struct atmtcp_hdr* skb_put (struct sk_buff*,int) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int stub2 (struct atm_vcc*,struct sk_buff*) ;
 int stub3 (struct atm_vcc*,struct sk_buff*) ;
 int stub4 (struct atm_vcc*,struct sk_buff*) ;
 int stub5 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static int atmtcp_v_send(struct atm_vcc *vcc,struct sk_buff *skb)
{
 struct atmtcp_dev_data *dev_data;
 struct atm_vcc *out_vcc=((void*)0);
 struct sk_buff *new_skb;
 struct atmtcp_hdr *hdr;
 int size;

 if (vcc->qos.txtp.traffic_class == ATM_NONE) {
  if (vcc->pop) vcc->pop(vcc,skb);
  else dev_kfree_skb(skb);
  return -EINVAL;
 }
 dev_data = PRIV(vcc->dev);
 if (dev_data) out_vcc = dev_data->vcc;
 if (!dev_data || !out_vcc) {
  if (vcc->pop) vcc->pop(vcc,skb);
  else dev_kfree_skb(skb);
  if (dev_data) return 0;
  atomic_inc(&vcc->stats->tx_err);
  return -ENOLINK;
 }
 size = skb->len+sizeof(struct atmtcp_hdr);
 new_skb = atm_alloc_charge(out_vcc,size,GFP_ATOMIC);
 if (!new_skb) {
  if (vcc->pop) vcc->pop(vcc,skb);
  else dev_kfree_skb(skb);
  atomic_inc(&vcc->stats->tx_err);
  return -ENOBUFS;
 }
 hdr = skb_put(new_skb, sizeof(struct atmtcp_hdr));
 hdr->vpi = htons(vcc->vpi);
 hdr->vci = htons(vcc->vci);
 hdr->length = htonl(skb->len);
 skb_copy_from_linear_data(skb, skb_put(new_skb, skb->len), skb->len);
 if (vcc->pop) vcc->pop(vcc,skb);
 else dev_kfree_skb(skb);
 out_vcc->push(out_vcc,new_skb);
 atomic_inc(&vcc->stats->tx);
 atomic_inc(&out_vcc->stats->rx);
 return 0;
}
