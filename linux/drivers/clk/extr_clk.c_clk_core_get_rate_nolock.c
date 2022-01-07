
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {unsigned long rate; scalar_t__ parent; int num_parents; } ;



__attribute__((used)) static unsigned long clk_core_get_rate_nolock(struct clk_core *core)
{
 if (!core)
  return 0;

 if (!core->num_parents || core->parent)
  return core->rate;






 return 0;
}
