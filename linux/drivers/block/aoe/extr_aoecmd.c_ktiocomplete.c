
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {long len; scalar_t__ data; int dev; } ;
struct TYPE_6__ {long bi_size; } ;
struct frame {int flags; TYPE_3__ iter; struct buf* buf; int skb; struct sk_buff* r_skb; struct aoetgt* t; } ;
struct TYPE_4__ {scalar_t__ bi_size; } ;
struct buf {scalar_t__ nframesout; TYPE_1__ iter; TYPE_2__* bio; } ;
struct aoetgt {scalar_t__ taint; scalar_t__ nout_probes; struct aoedev* d; } ;
struct aoeif {int lost; } ;
struct aoedev {int lock; int aoeminor; scalar_t__ aoemajor; } ;
struct aoe_hdr {int minor; int major; } ;
struct aoe_atahdr {int cmdstat; int scnt; } ;
struct TYPE_5__ {void* bi_status; } ;







 void* BLK_STS_IOERR ;
 int FFL_PROBE ;
 int aoe_end_buf (struct aoedev*,struct buf*) ;
 int aoe_freetframe (struct frame*) ;
 int aoedev_put (struct aoedev*) ;
 int ataid_complete (struct aoedev*,struct aoetgt*,scalar_t__) ;
 int be16_to_cpu (int ) ;
 int bvcpy (struct sk_buff*,TYPE_2__*,TYPE_3__,long) ;
 int count_targets (struct aoedev*,int*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int get_unaligned (int *) ;
 struct aoeif* getif (struct aoetgt*,int ) ;
 int pr_err (char*,...) ;
 int pr_err_ratelimited (char*,char*,long,int ,long,long) ;
 int pr_info (char*,...) ;
 int probe (struct aoetgt*) ;
 int skb_linearize (struct sk_buff*) ;
 scalar_t__ skb_mac_header (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
ktiocomplete(struct frame *f)
{
 struct aoe_hdr *hin, *hout;
 struct aoe_atahdr *ahin, *ahout;
 struct buf *buf;
 struct sk_buff *skb;
 struct aoetgt *t;
 struct aoeif *ifp;
 struct aoedev *d;
 long n;
 int untainted;

 if (f == ((void*)0))
  return;

 t = f->t;
 d = t->d;
 skb = f->r_skb;
 buf = f->buf;
 if (f->flags & FFL_PROBE)
  goto out;
 if (!skb)
  goto noskb;

 hout = (struct aoe_hdr *) skb_mac_header(f->skb);
 ahout = (struct aoe_atahdr *) (hout+1);

 hin = (struct aoe_hdr *) skb->data;
 skb_pull(skb, sizeof(*hin));
 ahin = (struct aoe_atahdr *) skb->data;
 skb_pull(skb, sizeof(*ahin));
 if (ahin->cmdstat & 0xa9) {
  pr_err("aoe: ata error cmd=%2.2Xh stat=%2.2Xh from e%ld.%d\n",
   ahout->cmdstat, ahin->cmdstat,
   d->aoemajor, d->aoeminor);
noskb: if (buf)
   buf->bio->bi_status = BLK_STS_IOERR;
  goto out;
 }

 n = ahout->scnt << 9;
 switch (ahout->cmdstat) {
 case 131:
 case 130:
  if (skb->len < n) {
   pr_err("%s e%ld.%d.  skb->len=%d need=%ld\n",
    "aoe: runt data size in read from",
    (long) d->aoemajor, d->aoeminor,
          skb->len, n);
   buf->bio->bi_status = BLK_STS_IOERR;
   break;
  }
  if (n > f->iter.bi_size) {
   pr_err_ratelimited("%s e%ld.%d.  bytes=%ld need=%u\n",
    "aoe: too-large data size in read from",
    (long) d->aoemajor, d->aoeminor,
    n, f->iter.bi_size);
   buf->bio->bi_status = BLK_STS_IOERR;
   break;
  }
  bvcpy(skb, f->buf->bio, f->iter, n);

 case 129:
 case 128:
  spin_lock_irq(&d->lock);
  ifp = getif(t, skb->dev);
  if (ifp)
   ifp->lost = 0;
  spin_unlock_irq(&d->lock);
  break;
 case 132:
  if (skb->len < 512) {
   pr_info("%s e%ld.%d.  skb->len=%d need=512\n",
    "aoe: runt data size in ataid from",
    (long) d->aoemajor, d->aoeminor,
    skb->len);
   break;
  }
  if (skb_linearize(skb))
   break;
  spin_lock_irq(&d->lock);
  ataid_complete(d, t, skb->data);
  spin_unlock_irq(&d->lock);
  break;
 default:
  pr_info("aoe: unrecognized ata command %2.2Xh for %d.%d\n",
   ahout->cmdstat,
   be16_to_cpu(get_unaligned(&hin->major)),
   hin->minor);
 }
out:
 spin_lock_irq(&d->lock);
 if (t->taint > 0
 && --t->taint > 0
 && t->nout_probes == 0) {
  count_targets(d, &untainted);
  if (untainted > 0) {
   probe(t);
   t->nout_probes++;
  }
 }

 aoe_freetframe(f);

 if (buf && --buf->nframesout == 0 && buf->iter.bi_size == 0)
  aoe_end_buf(d, buf);

 spin_unlock_irq(&d->lock);
 aoedev_put(d);
 dev_kfree_skb(skb);
}
