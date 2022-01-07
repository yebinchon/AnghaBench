
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_sama5d4_slow_osc {int prepared; scalar_t__ startup_usec; TYPE_1__* bits; int sckcr; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int cr_oscsel; } ;


 scalar_t__ SYSTEM_RUNNING ;
 int readl (int ) ;
 scalar_t__ system_state ;
 struct clk_sama5d4_slow_osc* to_clk_sama5d4_slow_osc (struct clk_hw*) ;
 int udelay (scalar_t__) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
{
 struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);

 if (osc->prepared)
  return 0;





 if ((readl(osc->sckcr) & osc->bits->cr_oscsel)) {
  osc->prepared = 1;
  return 0;
 }

 if (system_state < SYSTEM_RUNNING)
  udelay(osc->startup_usec);
 else
  usleep_range(osc->startup_usec, osc->startup_usec + 1);
 osc->prepared = 1;

 return 0;
}
