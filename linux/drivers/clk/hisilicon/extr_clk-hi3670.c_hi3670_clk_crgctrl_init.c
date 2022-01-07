
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_clock_data {int dummy; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int hi3670_crg_fixed_factor_clks ;
 int hi3670_crgctrl_divider_clks ;
 int hi3670_crgctrl_gate_clks ;
 int hi3670_crgctrl_gate_sep_clks ;
 int hi3670_crgctrl_mux_clks ;
 int hi3670_fixed_rate_clks ;
 struct hisi_clock_data* hisi_clk_init (struct device_node*,int) ;
 int hisi_clk_register_divider (int ,int,struct hisi_clock_data*) ;
 int hisi_clk_register_fixed_factor (int ,int,struct hisi_clock_data*) ;
 int hisi_clk_register_fixed_rate (int ,int,struct hisi_clock_data*) ;
 int hisi_clk_register_gate (int ,int,struct hisi_clock_data*) ;
 int hisi_clk_register_gate_sep (int ,int,struct hisi_clock_data*) ;
 int hisi_clk_register_mux (int ,int,struct hisi_clock_data*) ;

__attribute__((used)) static void hi3670_clk_crgctrl_init(struct device_node *np)
{
 struct hisi_clock_data *clk_data;

 int nr = ARRAY_SIZE(hi3670_fixed_rate_clks) +
   ARRAY_SIZE(hi3670_crgctrl_gate_sep_clks) +
   ARRAY_SIZE(hi3670_crgctrl_gate_clks) +
   ARRAY_SIZE(hi3670_crgctrl_mux_clks) +
   ARRAY_SIZE(hi3670_crg_fixed_factor_clks) +
   ARRAY_SIZE(hi3670_crgctrl_divider_clks);

 clk_data = hisi_clk_init(np, nr);
 if (!clk_data)
  return;

 hisi_clk_register_fixed_rate(hi3670_fixed_rate_clks,
         ARRAY_SIZE(hi3670_fixed_rate_clks),
         clk_data);
 hisi_clk_register_gate_sep(hi3670_crgctrl_gate_sep_clks,
       ARRAY_SIZE(hi3670_crgctrl_gate_sep_clks),
       clk_data);
 hisi_clk_register_gate(hi3670_crgctrl_gate_clks,
          ARRAY_SIZE(hi3670_crgctrl_gate_clks),
          clk_data);
 hisi_clk_register_mux(hi3670_crgctrl_mux_clks,
         ARRAY_SIZE(hi3670_crgctrl_mux_clks),
         clk_data);
 hisi_clk_register_fixed_factor(hi3670_crg_fixed_factor_clks,
           ARRAY_SIZE(hi3670_crg_fixed_factor_clks),
           clk_data);
 hisi_clk_register_divider(hi3670_crgctrl_divider_clks,
      ARRAY_SIZE(hi3670_crgctrl_divider_clks),
      clk_data);
}
