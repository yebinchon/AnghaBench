
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct davinci_psc_data {TYPE_1__ clk_data; } ;
struct clk {int dummy; } ;


 int davinci_lpsc_clk_reset (struct clk*,int) ;
 struct davinci_psc_data* to_davinci_psc_data (struct reset_controller_dev*) ;

__attribute__((used)) static int davinci_psc_reset_deassert(struct reset_controller_dev *rcdev,
          unsigned long id)
{
 struct davinci_psc_data *psc = to_davinci_psc_data(rcdev);
 struct clk *clk = psc->clk_data.clks[id];

 return davinci_lpsc_clk_reset(clk, 0);
}
