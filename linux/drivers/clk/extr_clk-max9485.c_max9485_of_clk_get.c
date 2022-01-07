
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {unsigned int* args; } ;
struct max9485_driver_data {TYPE_1__* hw; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw hw; } ;



__attribute__((used)) static struct clk_hw *
max9485_of_clk_get(struct of_phandle_args *clkspec, void *data)
{
 struct max9485_driver_data *drvdata = data;
 unsigned int idx = clkspec->args[0];

 return &drvdata->hw[idx].hw;
}
