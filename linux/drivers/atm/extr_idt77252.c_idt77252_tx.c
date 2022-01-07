
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vc_map {int flags; int index; } ;
struct tsq_entry {int word_2; int word_1; } ;
struct TYPE_2__ {struct tsq_entry* next; struct tsq_entry* base; struct tsq_entry* last; } ;
struct idt77252_dev {int vpibits; int vcibits; TYPE_1__ tsq; int index; int name; struct vc_map** vcs; } ;


 int SAR_REG_TSQB ;
 int SAR_REG_TSQH ;
 int SAR_REG_TSQT ;
 int SAR_TBD_VCI_SHIFT ;
 int SAR_TBD_VPI_SHIFT ;
 int SAR_TSQE_INVALID ;
 int SAR_TSQE_TAG (int) ;
 int SAR_TSQE_TYPE ;




 int TXPRINTK (char*,struct tsq_entry*,...) ;
 int VCF_IDLE ;
 size_t VPCI2VC (struct idt77252_dev*,unsigned int,unsigned int) ;
 int XPRINTK (char*,int ,int ,int ,struct tsq_entry*) ;
 int cpu_to_le32 (int) ;
 int drain_scq (struct idt77252_dev*,struct vc_map*) ;
 int le32_to_cpu (int ) ;
 int printk (char*,int ,unsigned int,...) ;
 int readl (int ) ;
 int set_bit (int ,int *) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void
idt77252_tx(struct idt77252_dev *card)
{
 struct tsq_entry *tsqe;
 unsigned int vpi, vci;
 struct vc_map *vc;
 u32 conn, stat;

 if (card->tsq.next == card->tsq.last)
  tsqe = card->tsq.base;
 else
  tsqe = card->tsq.next + 1;

 TXPRINTK("idt77252_tx: tsq  %p: base %p, next %p, last %p\n", tsqe,
   card->tsq.base, card->tsq.next, card->tsq.last);
 TXPRINTK("idt77252_tx: tsqb %08x, tsqt %08x, tsqh %08x, \n",
   readl(SAR_REG_TSQB),
   readl(SAR_REG_TSQT),
   readl(SAR_REG_TSQH));

 stat = le32_to_cpu(tsqe->word_2);

 if (stat & SAR_TSQE_INVALID)
  return;

 do {
  TXPRINTK("tsqe: 0x%p [0x%08x 0x%08x]\n", tsqe,
    le32_to_cpu(tsqe->word_1),
    le32_to_cpu(tsqe->word_2));

  switch (stat & SAR_TSQE_TYPE) {
  case 129:
   TXPRINTK("%s: Timer RollOver detected.\n", card->name);
   break;

  case 131:

   conn = le32_to_cpu(tsqe->word_1);

   if (SAR_TSQE_TAG(stat) == 0x10) {





    break;
   }

   vc = card->vcs[conn & 0x1fff];
   if (!vc) {
    printk("%s: could not find VC from conn %d\n",
           card->name, conn & 0x1fff);
    break;
   }

   printk("%s: Connection %d IDLE.\n",
          card->name, vc->index);

   set_bit(VCF_IDLE, &vc->flags);
   break;

  case 128:

   conn = le32_to_cpu(tsqe->word_1);

   vc = card->vcs[conn & 0x1fff];
   if (!vc) {
    printk("%s: no VC at index %d\n",
           card->name,
           le32_to_cpu(tsqe->word_1) & 0x1fff);
    break;
   }

   drain_scq(card, vc);
   break;

  case 130:

   conn = le32_to_cpu(tsqe->word_1);

   vpi = (conn >> SAR_TBD_VPI_SHIFT) & 0x00ff;
   vci = (conn >> SAR_TBD_VCI_SHIFT) & 0xffff;

   if (vpi >= (1 << card->vpibits) ||
       vci >= (1 << card->vcibits)) {
    printk("%s: TBD complete: "
           "out of range VPI.VCI %u.%u\n",
           card->name, vpi, vci);
    break;
   }

   vc = card->vcs[VPCI2VC(card, vpi, vci)];
   if (!vc) {
    printk("%s: TBD complete: "
           "no VC at VPI.VCI %u.%u\n",
           card->name, vpi, vci);
    break;
   }

   drain_scq(card, vc);
   break;
  }

  tsqe->word_2 = cpu_to_le32(SAR_TSQE_INVALID);

  card->tsq.next = tsqe;
  if (card->tsq.next == card->tsq.last)
   tsqe = card->tsq.base;
  else
   tsqe = card->tsq.next + 1;

  TXPRINTK("tsqe: %p: base %p, next %p, last %p\n", tsqe,
    card->tsq.base, card->tsq.next, card->tsq.last);

  stat = le32_to_cpu(tsqe->word_2);

 } while (!(stat & SAR_TSQE_INVALID));

 writel((unsigned long)card->tsq.next - (unsigned long)card->tsq.base,
        SAR_REG_TSQH);

 XPRINTK("idt77252_tx-after writel%d: TSQ head = 0x%x, tail = 0x%x, next = 0x%p.\n",
  card->index, readl(SAR_REG_TSQH),
  readl(SAR_REG_TSQT), card->tsq.next);
}
