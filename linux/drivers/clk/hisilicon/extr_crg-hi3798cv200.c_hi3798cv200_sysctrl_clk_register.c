
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hisi_clock_data {int clk_data; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct hisi_clock_data* ERR_PTR (int) ;
 int HI3798CV200_SYSCTRL_NR_CLKS ;
 int hi3798cv200_sysctrl_gate_clks ;
 struct hisi_clock_data* hisi_clk_alloc (struct platform_device*,int ) ;
 int hisi_clk_register_gate (int ,int ,struct hisi_clock_data*) ;
 int hisi_clk_unregister_gate (int ,int ,struct hisi_clock_data*) ;
 int of_clk_add_provider (int ,int ,int *) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static struct hisi_clock_data *hi3798cv200_sysctrl_clk_register(
     struct platform_device *pdev)
{
 struct hisi_clock_data *clk_data;
 int ret;

 clk_data = hisi_clk_alloc(pdev, HI3798CV200_SYSCTRL_NR_CLKS);
 if (!clk_data)
  return ERR_PTR(-ENOMEM);

 ret = hisi_clk_register_gate(hi3798cv200_sysctrl_gate_clks,
    ARRAY_SIZE(hi3798cv200_sysctrl_gate_clks),
    clk_data);
 if (ret)
  return ERR_PTR(ret);

 ret = of_clk_add_provider(pdev->dev.of_node,
   of_clk_src_onecell_get, &clk_data->clk_data);
 if (ret)
  goto unregister_gate;

 return clk_data;

unregister_gate:
 hisi_clk_unregister_gate(hi3798cv200_sysctrl_gate_clks,
    ARRAY_SIZE(hi3798cv200_sysctrl_gate_clks),
    clk_data);
 return ERR_PTR(ret);
}
