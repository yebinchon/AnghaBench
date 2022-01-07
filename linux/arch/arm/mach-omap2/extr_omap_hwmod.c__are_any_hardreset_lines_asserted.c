
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int rst_lines_cnt; TYPE_1__* rst_lines; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ _read_hardreset (struct omap_hwmod*,int ) ;

__attribute__((used)) static bool _are_any_hardreset_lines_asserted(struct omap_hwmod *oh)
{
 int rst_cnt = 0;
 int i;

 for (i = 0; i < oh->rst_lines_cnt && rst_cnt == 0; i++)
  if (_read_hardreset(oh, oh->rst_lines[i].name) > 0)
   rst_cnt++;

 return (rst_cnt) ? 1 : 0;
}
