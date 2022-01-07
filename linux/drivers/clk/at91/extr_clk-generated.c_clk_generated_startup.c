
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_generated {int id; int gckdiv; TYPE_1__* layout; int parent_id; int lock; int regmap; } ;
struct TYPE_2__ {int pid_mask; int gckcss_mask; int offset; } ;


 int AT91_PMC_PCR_GCKDIV_MASK ;
 int FIELD_GET (int ,int ) ;
 int field_get (int ,int ) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void clk_generated_startup(struct clk_generated *gck)
{
 u32 tmp;
 unsigned long flags;

 spin_lock_irqsave(gck->lock, flags);
 regmap_write(gck->regmap, gck->layout->offset,
       (gck->id & gck->layout->pid_mask));
 regmap_read(gck->regmap, gck->layout->offset, &tmp);
 spin_unlock_irqrestore(gck->lock, flags);

 gck->parent_id = field_get(gck->layout->gckcss_mask, tmp);
 gck->gckdiv = FIELD_GET(AT91_PMC_PCR_GCKDIV_MASK, tmp);
}
