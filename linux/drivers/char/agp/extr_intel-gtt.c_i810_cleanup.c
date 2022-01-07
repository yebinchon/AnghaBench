
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i81x_gtt_table; scalar_t__ registers; } ;


 int I810_GTT_ORDER ;
 scalar_t__ I810_PGETBL_CTL ;
 int free_gatt_pages (int ,int ) ;
 TYPE_1__ intel_private ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void i810_cleanup(void)
{
 writel(0, intel_private.registers+I810_PGETBL_CTL);
 free_gatt_pages(intel_private.i81x_gtt_table, I810_GTT_ORDER);
}
