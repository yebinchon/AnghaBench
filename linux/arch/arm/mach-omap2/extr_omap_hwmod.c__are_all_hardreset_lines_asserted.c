
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int rst_lines_cnt; TYPE_1__* rst_lines; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ _read_hardreset (struct omap_hwmod*,int ) ;

__attribute__((used)) static bool _are_all_hardreset_lines_asserted(struct omap_hwmod *oh)
{
 int i, rst_cnt = 0;

 if (oh->rst_lines_cnt == 0)
  return 0;

 for (i = 0; i < oh->rst_lines_cnt; i++)
  if (_read_hardreset(oh, oh->rst_lines[i].name) > 0)
   rst_cnt++;

 if (oh->rst_lines_cnt == rst_cnt)
  return 1;

 return 0;
}
