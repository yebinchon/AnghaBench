
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stratix10_clock_data {int dummy; } ;
struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct stratix10_clock_data*) ;
 int PTR_ERR (struct stratix10_clock_data*) ;
 int STRATIX10_NUM_CLKS ;
 struct stratix10_clock_data* __socfpga_s10_clk_init (struct platform_device*,int ) ;
 int s10_clk_register_c_perip (int ,int ,struct stratix10_clock_data*) ;
 int s10_clk_register_cnt_perip (int ,int ,struct stratix10_clock_data*) ;
 int s10_clk_register_gate (int ,int ,struct stratix10_clock_data*) ;
 int s10_clk_register_pll (int ,int ,struct stratix10_clock_data*) ;
 int s10_gate_clks ;
 int s10_main_perip_c_clks ;
 int s10_main_perip_cnt_clks ;
 int s10_pll_clks ;

__attribute__((used)) static int s10_clkmgr_init(struct platform_device *pdev)
{
 struct stratix10_clock_data *clk_data;

 clk_data = __socfpga_s10_clk_init(pdev, STRATIX10_NUM_CLKS);
 if (IS_ERR(clk_data))
  return PTR_ERR(clk_data);

 s10_clk_register_pll(s10_pll_clks, ARRAY_SIZE(s10_pll_clks), clk_data);

 s10_clk_register_c_perip(s10_main_perip_c_clks,
     ARRAY_SIZE(s10_main_perip_c_clks), clk_data);

 s10_clk_register_cnt_perip(s10_main_perip_cnt_clks,
       ARRAY_SIZE(s10_main_perip_cnt_clks),
       clk_data);

 s10_clk_register_gate(s10_gate_clks, ARRAY_SIZE(s10_gate_clks),
         clk_data);
 return 0;
}
