
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_4__ {int (* mv_mode_pins ) () ;} ;
struct TYPE_3__ {int rate; } ;


 TYPE_2__ sh_mv ;
 int stub1 () ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 int multiplier;





 multiplier = (sh_mv.mv_mode_pins() & 0xf) < 3 ? 64 : 32;

 return clk->parent->rate * multiplier;
}
