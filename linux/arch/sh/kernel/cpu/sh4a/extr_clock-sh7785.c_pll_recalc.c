
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int MODE_PIN4 ;
 scalar_t__ test_mode_pin (int ) ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 int multiplier;

 multiplier = test_mode_pin(MODE_PIN4) ? 36 : 72;

 return clk->parent->rate * multiplier;
}
