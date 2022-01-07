
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct st_clk_data {scalar_t__ base; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {int clk; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ CLKDRVSTR2 ;
 int CLK_GATE_SET_TO_DISABLE ;
 int EINVAL ;
 scalar_t__ MISCCLKCNTL1 ;
 int OSCCLKENB ;
 int OSCOUT1CLK25MHZ ;
 size_t ST_CLK_25M ;
 size_t ST_CLK_48M ;
 size_t ST_CLK_GATE ;
 size_t ST_CLK_MUX ;
 TYPE_1__* clk_hw_register_fixed_rate (int *,char*,int *,int ,int) ;
 TYPE_1__* clk_hw_register_gate (int *,char*,char*,int ,scalar_t__,int ,int ,int *) ;
 TYPE_1__* clk_hw_register_mux (int *,char*,int ,int ,int ,scalar_t__,int ,int,int ,int *) ;
 int clk_oscout1_parents ;
 int clk_set_parent (int ,int ) ;
 struct st_clk_data* dev_get_platdata (int *) ;
 int devm_clk_hw_register_clkdev (int *,TYPE_1__*,char*,int *) ;
 TYPE_1__** hws ;

__attribute__((used)) static int st_clk_probe(struct platform_device *pdev)
{
 struct st_clk_data *st_data;

 st_data = dev_get_platdata(&pdev->dev);
 if (!st_data || !st_data->base)
  return -EINVAL;

 hws[ST_CLK_48M] = clk_hw_register_fixed_rate(((void*)0), "clk48MHz", ((void*)0), 0,
           48000000);
 hws[ST_CLK_25M] = clk_hw_register_fixed_rate(((void*)0), "clk25MHz", ((void*)0), 0,
           25000000);

 hws[ST_CLK_MUX] = clk_hw_register_mux(((void*)0), "oscout1_mux",
  clk_oscout1_parents, ARRAY_SIZE(clk_oscout1_parents),
  0, st_data->base + CLKDRVSTR2, OSCOUT1CLK25MHZ, 3, 0, ((void*)0));

 clk_set_parent(hws[ST_CLK_MUX]->clk, hws[ST_CLK_48M]->clk);

 hws[ST_CLK_GATE] = clk_hw_register_gate(((void*)0), "oscout1", "oscout1_mux",
  0, st_data->base + MISCCLKCNTL1, OSCCLKENB,
  CLK_GATE_SET_TO_DISABLE, ((void*)0));

 devm_clk_hw_register_clkdev(&pdev->dev, hws[ST_CLK_GATE], "oscout1",
        ((void*)0));

 return 0;
}
