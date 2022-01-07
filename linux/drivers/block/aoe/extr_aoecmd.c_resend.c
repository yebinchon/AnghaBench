
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct frame {int flags; int sent; int tag; struct sk_buff* skb; struct aoetgt* t; } ;
struct aoetgt {TYPE_2__* ifp; int addr; int nout; } ;
struct aoedev {int aoeminor; int aoemajor; } ;
struct aoe_hdr {int src; int dst; int tag; } ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* nd; } ;
struct TYPE_3__ {int dev_addr; } ;


 int FFL_PROBE ;
 int GFP_ATOMIC ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int aoechr_error (char*) ;
 int aoenet_xmit (struct sk_buff_head*) ;
 int cpu_to_be32 (int ) ;
 int fhash (struct frame*) ;
 int * ifrotate (struct aoetgt*) ;
 int jiffies ;
 int ktcomplete (struct frame*,int *) ;
 int ktime_get () ;
 int memcpy (int ,int ,int) ;
 int newtag (struct aoedev*) ;
 int pr_info (char*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int snprintf (char*,int,char*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
resend(struct aoedev *d, struct frame *f)
{
 struct sk_buff *skb;
 struct sk_buff_head queue;
 struct aoe_hdr *h;
 struct aoetgt *t;
 char buf[128];
 u32 n;

 t = f->t;
 n = newtag(d);
 skb = f->skb;
 if (ifrotate(t) == ((void*)0)) {

  pr_info("aoe: resend: no interfaces to rotate to.\n");
  ktcomplete(f, ((void*)0));
  return;
 }
 h = (struct aoe_hdr *) skb_mac_header(skb);

 if (!(f->flags & FFL_PROBE)) {
  snprintf(buf, sizeof(buf),
   "%15s e%ld.%d oldtag=%08x@%08lx newtag=%08x s=%pm d=%pm nout=%d\n",
   "retransmit", d->aoemajor, d->aoeminor,
   f->tag, jiffies, n,
   h->src, h->dst, t->nout);
  aoechr_error(buf);
 }

 f->tag = n;
 fhash(f);
 h->tag = cpu_to_be32(n);
 memcpy(h->dst, t->addr, sizeof h->dst);
 memcpy(h->src, t->ifp->nd->dev_addr, sizeof h->src);

 skb->dev = t->ifp->nd;
 skb = skb_clone(skb, GFP_ATOMIC);
 if (skb == ((void*)0))
  return;
 f->sent = ktime_get();
 __skb_queue_head_init(&queue);
 __skb_queue_tail(&queue, skb);
 aoenet_xmit(&queue);
}
