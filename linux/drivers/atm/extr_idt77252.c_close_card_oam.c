
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
struct TYPE_3__ {TYPE_2__ rx_pool; } ;
struct vc_map {unsigned long index; TYPE_1__ rcv; } ;
struct idt77252_dev {int vpibits; unsigned long rct_base; int name; int cmd_lock; struct vc_map** vcs; } ;


 int DPRINTK (char*,int ) ;
 unsigned long SAR_CMD_CLOSE_CONNECTION ;
 int SAR_REG_CMD ;
 unsigned long SAR_SRAM_RCT_SIZE ;
 int VPCI2VC (struct idt77252_dev*,int,int) ;
 int recycle_rx_pool_skb (struct idt77252_dev*,TYPE_2__*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void
close_card_oam(struct idt77252_dev *card)
{
 unsigned long flags;
 unsigned long addr;
 struct vc_map *vc;
 int vpi, vci;
 int index;

 for (vpi = 0; vpi < (1 << card->vpibits); vpi++) {
  for (vci = 3; vci < 5; vci++) {
   index = VPCI2VC(card, vpi, vci);
   vc = card->vcs[index];

   addr = card->rct_base + vc->index * SAR_SRAM_RCT_SIZE;

   spin_lock_irqsave(&card->cmd_lock, flags);
   writel(SAR_CMD_CLOSE_CONNECTION | (addr << 2),
          SAR_REG_CMD);
   waitfor_idle(card);
   spin_unlock_irqrestore(&card->cmd_lock, flags);

   if (skb_queue_len(&vc->rcv.rx_pool.queue) != 0) {
    DPRINTK("%s: closing a VC "
     "with pending rx buffers.\n",
     card->name);

    recycle_rx_pool_skb(card, &vc->rcv.rx_pool);
   }
  }
 }
}
