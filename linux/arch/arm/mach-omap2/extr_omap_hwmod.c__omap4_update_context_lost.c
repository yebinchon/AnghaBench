
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flags; int context_offs; int context_lost_counter; } ;
struct TYPE_10__ {TYPE_4__ omap4; } ;
struct omap_hwmod {TYPE_5__ prcm; TYPE_3__* clkdm; } ;
struct TYPE_7__ {TYPE_1__* ptr; } ;
struct TYPE_8__ {TYPE_2__ pwrdm; } ;
struct TYPE_6__ {int prcm_offs; int prcm_partition; } ;


 int HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT ;
 int prm_clear_context_loss_flags_old (int ,int ,int ) ;
 int prm_was_any_context_lost_old (int ,int ,int ) ;

__attribute__((used)) static void _omap4_update_context_lost(struct omap_hwmod *oh)
{
 if (oh->prcm.omap4.flags & HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT)
  return;

 if (!prm_was_any_context_lost_old(oh->clkdm->pwrdm.ptr->prcm_partition,
       oh->clkdm->pwrdm.ptr->prcm_offs,
       oh->prcm.omap4.context_offs))
  return;

 oh->prcm.omap4.context_lost_counter++;
 prm_clear_context_loss_flags_old(oh->clkdm->pwrdm.ptr->prcm_partition,
      oh->clkdm->pwrdm.ptr->prcm_offs,
      oh->prcm.omap4.context_offs);
}
