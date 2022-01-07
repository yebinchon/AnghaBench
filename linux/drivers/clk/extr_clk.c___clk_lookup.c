
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {TYPE_1__* hw; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;


 struct clk_core* clk_core_lookup (char const*) ;

struct clk *__clk_lookup(const char *name)
{
 struct clk_core *core = clk_core_lookup(name);

 return !core ? ((void*)0) : core->hw->clk;
}
