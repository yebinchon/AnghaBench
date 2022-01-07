
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data_len; int truesize; int dev; } ;
struct TYPE_7__ {int bi_size; int bi_sector; } ;
struct frame {TYPE_3__ iter; TYPE_1__* buf; scalar_t__ waited_total; scalar_t__ waited; int tag; struct aoetgt* t; struct sk_buff* skb; } ;
struct aoetgt {TYPE_2__* ifp; int rpkts; int wpkts; TYPE_4__* d; int nout; } ;
struct aoe_hdr {int dummy; } ;
struct aoe_atahdr {int scnt; int lba3; char cmdstat; int aflags; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {int nd; } ;
struct TYPE_5__ {int bio; } ;


 int AOEAFL_EXT ;
 int AOEAFL_WRITE ;
 char ATA_CMD_PIO_READ ;
 int DEVFL_EXT ;
 scalar_t__ WRITE ;
 int aoehdr_atainit (TYPE_4__*,struct aoetgt*,struct aoe_hdr*) ;
 scalar_t__ bio_data_dir (int ) ;
 int fhash (struct frame*) ;
 int memset (struct aoe_hdr*,int ,int) ;
 int put_lba (struct aoe_atahdr*,int ) ;
 int skb_fillup (struct sk_buff*,int ,TYPE_3__) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
ata_rw_frameinit(struct frame *f)
{
 struct aoetgt *t;
 struct aoe_hdr *h;
 struct aoe_atahdr *ah;
 struct sk_buff *skb;
 char writebit, extbit;

 skb = f->skb;
 h = (struct aoe_hdr *) skb_mac_header(skb);
 ah = (struct aoe_atahdr *) (h + 1);
 skb_put(skb, sizeof(*h) + sizeof(*ah));
 memset(h, 0, skb->len);

 writebit = 0x10;
 extbit = 0x4;

 t = f->t;
 f->tag = aoehdr_atainit(t->d, t, h);
 fhash(f);
 t->nout++;
 f->waited = 0;
 f->waited_total = 0;


 ah->scnt = f->iter.bi_size >> 9;
 put_lba(ah, f->iter.bi_sector);
 if (t->d->flags & DEVFL_EXT) {
  ah->aflags |= AOEAFL_EXT;
 } else {
  extbit = 0;
  ah->lba3 &= 0x0f;
  ah->lba3 |= 0xe0;
 }
 if (f->buf && bio_data_dir(f->buf->bio) == WRITE) {
  skb_fillup(skb, f->buf->bio, f->iter);
  ah->aflags |= AOEAFL_WRITE;
  skb->len += f->iter.bi_size;
  skb->data_len = f->iter.bi_size;
  skb->truesize += f->iter.bi_size;
  t->wpkts++;
 } else {
  t->rpkts++;
  writebit = 0;
 }

 ah->cmdstat = ATA_CMD_PIO_READ | writebit | extbit;
 skb->dev = t->ifp->nd;
}
