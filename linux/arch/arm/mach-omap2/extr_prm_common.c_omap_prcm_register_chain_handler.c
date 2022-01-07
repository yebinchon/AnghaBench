
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct omap_prcm_irq_setup {int nr_regs; int* priority_mask; int nr_irqs; int irq; scalar_t__ base_irq; int reconfigure_io_chain; scalar_t__ mask; scalar_t__ ack; TYPE_1__* irqs; void* saved_mask; } ;
struct TYPE_7__ {scalar_t__ mask; scalar_t__ ack; } ;
struct TYPE_6__ {int irq_unmask; int irq_mask; int irq_ack; } ;
struct irq_chip_type {TYPE_3__ regs; TYPE_2__ chip; } ;
struct irq_chip_generic {struct irq_chip_type* chip_types; } ;
typedef int mask ;
struct TYPE_8__ {int va; } ;
struct TYPE_5__ {int offset; scalar_t__ priority; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_NOREQUEST ;
 int OMAP_PRCM_MAX_NR_PENDING_REG ;
 int handle_level_irq ;
 scalar_t__ irq_alloc_descs (int,int ,int,int ) ;
 struct irq_chip_generic* irq_alloc_generic_chip (char*,int,scalar_t__,int ,int ) ;
 int irq_gc_ack_set_bit ;
 int irq_gc_mask_clr_bit ;
 int irq_gc_mask_set_bit ;
 int irq_set_chained_handler (int,int ) ;
 int irq_setup_generic_chip (struct irq_chip_generic*,int,int ,int ,int ) ;
 void* kcalloc (int,int,int ) ;
 int memset (int*,int ,int) ;
 int omap_pcs_legacy_init (int,int ) ;
 int omap_prcm_event_to_irq (char*) ;
 int omap_prcm_irq_cleanup () ;
 int omap_prcm_irq_handler ;
 int pr_err (char*,...) ;
 struct irq_chip_generic** prcm_irq_chips ;
 struct omap_prcm_irq_setup* prcm_irq_setup ;
 TYPE_4__ prm_base ;

int omap_prcm_register_chain_handler(struct omap_prcm_irq_setup *irq_setup)
{
 int nr_regs;
 u32 mask[OMAP_PRCM_MAX_NR_PENDING_REG];
 int offset, i, irq;
 struct irq_chip_generic *gc;
 struct irq_chip_type *ct;

 if (!irq_setup)
  return -EINVAL;

 nr_regs = irq_setup->nr_regs;

 if (prcm_irq_setup) {
  pr_err("PRCM: already initialized; won't reinitialize\n");
  return -EINVAL;
 }

 if (nr_regs > OMAP_PRCM_MAX_NR_PENDING_REG) {
  pr_err("PRCM: nr_regs too large\n");
  return -EINVAL;
 }

 prcm_irq_setup = irq_setup;

 prcm_irq_chips = kcalloc(nr_regs, sizeof(void *), GFP_KERNEL);
 prcm_irq_setup->saved_mask = kcalloc(nr_regs, sizeof(u32),
          GFP_KERNEL);
 prcm_irq_setup->priority_mask = kcalloc(nr_regs, sizeof(u32),
      GFP_KERNEL);

 if (!prcm_irq_chips || !prcm_irq_setup->saved_mask ||
     !prcm_irq_setup->priority_mask)
  goto err;

 memset(mask, 0, sizeof(mask));

 for (i = 0; i < irq_setup->nr_irqs; i++) {
  offset = irq_setup->irqs[i].offset;
  mask[offset >> 5] |= 1 << (offset & 0x1f);
  if (irq_setup->irqs[i].priority)
   irq_setup->priority_mask[offset >> 5] |=
    1 << (offset & 0x1f);
 }

 irq = irq_setup->irq;
 irq_set_chained_handler(irq, omap_prcm_irq_handler);

 irq_setup->base_irq = irq_alloc_descs(-1, 0, irq_setup->nr_regs * 32,
  0);

 if (irq_setup->base_irq < 0) {
  pr_err("PRCM: failed to allocate irq descs: %d\n",
   irq_setup->base_irq);
  goto err;
 }

 for (i = 0; i < irq_setup->nr_regs; i++) {
  gc = irq_alloc_generic_chip("PRCM", 1,
   irq_setup->base_irq + i * 32, prm_base.va,
   handle_level_irq);

  if (!gc) {
   pr_err("PRCM: failed to allocate generic chip\n");
   goto err;
  }
  ct = gc->chip_types;
  ct->chip.irq_ack = irq_gc_ack_set_bit;
  ct->chip.irq_mask = irq_gc_mask_clr_bit;
  ct->chip.irq_unmask = irq_gc_mask_set_bit;

  ct->regs.ack = irq_setup->ack + i * 4;
  ct->regs.mask = irq_setup->mask + i * 4;

  irq_setup_generic_chip(gc, mask[i], 0, IRQ_NOREQUEST, 0);
  prcm_irq_chips[i] = gc;
 }

 irq = omap_prcm_event_to_irq("io");
 omap_pcs_legacy_init(irq, irq_setup->reconfigure_io_chain);

 return 0;

err:
 omap_prcm_irq_cleanup();
 return -ENOMEM;
}
