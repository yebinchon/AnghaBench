
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;
struct TYPE_2__ {scalar_t__ system_soft_reset_offset; int system_soft_reset; scalar_t__ rstoutn_mask_offset; int rstoutn_mask_reset_out_en; } ;


 TYPE_1__* mvebu_sc ;
 int pr_err (char*) ;
 scalar_t__ system_controller_base ;
 int writel (int ,scalar_t__) ;

void mvebu_restart(enum reboot_mode mode, const char *cmd)
{
 if (!system_controller_base) {
  pr_err("Cannot restart, system-controller not available: check the device tree\n");
 } else {



  writel(mvebu_sc->rstoutn_mask_reset_out_en,
   system_controller_base +
   mvebu_sc->rstoutn_mask_offset);



  writel(mvebu_sc->system_soft_reset,
   system_controller_base +
   mvebu_sc->system_soft_reset_offset);
 }

 while (1)
  ;
}
