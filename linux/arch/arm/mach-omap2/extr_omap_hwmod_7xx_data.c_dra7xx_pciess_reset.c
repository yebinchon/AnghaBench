
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int rst_lines_cnt; TYPE_1__* rst_lines; } ;
struct TYPE_2__ {int name; } ;


 int omap_hwmod_assert_hardreset (struct omap_hwmod*,int ) ;
 int omap_hwmod_deassert_hardreset (struct omap_hwmod*,int ) ;

int dra7xx_pciess_reset(struct omap_hwmod *oh)
{
 int i;

 for (i = 0; i < oh->rst_lines_cnt; i++) {
  omap_hwmod_assert_hardreset(oh, oh->rst_lines[i].name);
  omap_hwmod_deassert_hardreset(oh, oh->rst_lines[i].name);
 }

 return 0;
}
