
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int clk_num; struct clk** clks; } ;
struct TYPE_9__ {TYPE_1__ clk_data; } ;


 int ARRAY_SIZE (int ) ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 TYPE_2__* clk_crgctrl_data ;
 int hi3660_clk_crgctrl_early_init (struct device_node*) ;
 int hi3660_crg_fixed_factor_clks ;
 int hi3660_crgctrl_divider_clks ;
 int hi3660_crgctrl_gate_clks ;
 int hi3660_crgctrl_gate_sep_clks ;
 int hi3660_crgctrl_mux_clks ;
 int hisi_clk_register_divider (int ,int ,TYPE_2__*) ;
 int hisi_clk_register_fixed_factor (int ,int ,TYPE_2__*) ;
 int hisi_clk_register_gate (int ,int ,TYPE_2__*) ;
 int hisi_clk_register_gate_sep (int ,int ,TYPE_2__*) ;
 int hisi_clk_register_mux (int ,int ,TYPE_2__*) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static void hi3660_clk_crgctrl_init(struct device_node *np)
{
 struct clk **clks;
 int i;

 if (!clk_crgctrl_data)
  hi3660_clk_crgctrl_early_init(np);


 if (!clk_crgctrl_data)
  return;

 hisi_clk_register_gate_sep(hi3660_crgctrl_gate_sep_clks,
       ARRAY_SIZE(hi3660_crgctrl_gate_sep_clks),
       clk_crgctrl_data);
 hisi_clk_register_gate(hi3660_crgctrl_gate_clks,
          ARRAY_SIZE(hi3660_crgctrl_gate_clks),
          clk_crgctrl_data);
 hisi_clk_register_mux(hi3660_crgctrl_mux_clks,
         ARRAY_SIZE(hi3660_crgctrl_mux_clks),
         clk_crgctrl_data);
 hisi_clk_register_fixed_factor(hi3660_crg_fixed_factor_clks,
           ARRAY_SIZE(hi3660_crg_fixed_factor_clks),
           clk_crgctrl_data);
 hisi_clk_register_divider(hi3660_crgctrl_divider_clks,
      ARRAY_SIZE(hi3660_crgctrl_divider_clks),
      clk_crgctrl_data);

 clks = clk_crgctrl_data->clk_data.clks;
 for (i = 0; i < clk_crgctrl_data->clk_data.clk_num; i++) {
  if (IS_ERR(clks[i]) && PTR_ERR(clks[i]) != -EPROBE_DEFER)
   pr_err("Failed to register crgctrl clock[%d] err=%ld\n",
          i, PTR_ERR(clks[i]));
 }
}
