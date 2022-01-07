
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int dummy; } ;


 int IRQ_MFP_FDC ;
 int ataflop_lock ;
 int atari_disable_irq (int ) ;
 int atari_enable_irq (int ) ;
 int finish_fdc () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ataflop_commit_rqs(struct blk_mq_hw_ctx *hctx)
{
 spin_lock_irq(&ataflop_lock);
 atari_disable_irq(IRQ_MFP_FDC);
 finish_fdc();
 atari_enable_irq(IRQ_MFP_FDC);
 spin_unlock_irq(&ataflop_lock);
}
