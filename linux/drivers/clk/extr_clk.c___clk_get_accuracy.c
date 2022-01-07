
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {unsigned long accuracy; } ;



__attribute__((used)) static unsigned long __clk_get_accuracy(struct clk_core *core)
{
 if (!core)
  return 0;

 return core->accuracy;
}
