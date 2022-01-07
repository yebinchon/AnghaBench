
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; int len; } ;
struct frame {int sent; scalar_t__ waited_total; scalar_t__ waited; int tag; struct sk_buff* skb; } ;
struct aoetgt {TYPE_1__* ifp; int nout; } ;
struct TYPE_4__ {int function; } ;
struct aoedev {TYPE_2__ timer; int rttdev; int rttavg; struct aoetgt** tgt; } ;
struct aoe_hdr {int dummy; } ;
struct aoe_atahdr {int scnt; int lba3; int cmdstat; } ;
struct TYPE_3__ {int nd; } ;


 int ATA_CMD_ID_ATA ;
 int GFP_ATOMIC ;
 int RTTAVG_INIT ;
 int RTTDEV_INIT ;
 int aoehdr_atainit (struct aoedev*,struct aoetgt*,struct aoe_hdr*) ;
 int fhash (struct frame*) ;
 int ktime_get () ;
 int memset (struct aoe_hdr*,int ,int ) ;
 struct frame* newframe (struct aoedev*) ;
 int rexmit_timer ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

struct sk_buff *
aoecmd_ata_id(struct aoedev *d)
{
 struct aoe_hdr *h;
 struct aoe_atahdr *ah;
 struct frame *f;
 struct sk_buff *skb;
 struct aoetgt *t;

 f = newframe(d);
 if (f == ((void*)0))
  return ((void*)0);

 t = *d->tgt;


 skb = f->skb;
 h = (struct aoe_hdr *) skb_mac_header(skb);
 ah = (struct aoe_atahdr *) (h+1);
 skb_put(skb, sizeof *h + sizeof *ah);
 memset(h, 0, skb->len);
 f->tag = aoehdr_atainit(d, t, h);
 fhash(f);
 t->nout++;
 f->waited = 0;
 f->waited_total = 0;


 ah->scnt = 1;
 ah->cmdstat = ATA_CMD_ID_ATA;
 ah->lba3 = 0xa0;

 skb->dev = t->ifp->nd;

 d->rttavg = RTTAVG_INIT;
 d->rttdev = RTTDEV_INIT;
 d->timer.function = rexmit_timer;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (skb)
  f->sent = ktime_get();

 return skb;
}
