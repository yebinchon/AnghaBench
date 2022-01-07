
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int args_count; size_t* args; } ;
struct clk_sp810 {TYPE_1__* timerclken; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static struct clk *clk_sp810_timerclken_of_get(struct of_phandle_args *clkspec,
  void *data)
{
 struct clk_sp810 *sp810 = data;

 if (WARN_ON(clkspec->args_count != 1 ||
      clkspec->args[0] >= ARRAY_SIZE(sp810->timerclken)))
  return ((void*)0);

 return sp810->timerclken[clkspec->args[0]].clk;
}
