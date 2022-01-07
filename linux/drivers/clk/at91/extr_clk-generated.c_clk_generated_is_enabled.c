
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct clk_generated {int id; int lock; TYPE_1__* layout; int regmap; } ;
struct TYPE_2__ {int pid_mask; int offset; } ;


 unsigned int AT91_PMC_PCR_GCKEN ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_generated* to_clk_generated (struct clk_hw*) ;

__attribute__((used)) static int clk_generated_is_enabled(struct clk_hw *hw)
{
 struct clk_generated *gck = to_clk_generated(hw);
 unsigned long flags;
 unsigned int status;

 spin_lock_irqsave(gck->lock, flags);
 regmap_write(gck->regmap, gck->layout->offset,
       (gck->id & gck->layout->pid_mask));
 regmap_read(gck->regmap, gck->layout->offset, &status);
 spin_unlock_irqrestore(gck->lock, flags);

 return status & AT91_PMC_PCR_GCKEN ? 1 : 0;
}
