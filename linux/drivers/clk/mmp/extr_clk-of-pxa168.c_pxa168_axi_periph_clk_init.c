
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_unit {int dummy; } ;
struct pxa168_clk_unit {int apmu_base; struct mmp_clk_unit unit; } ;


 int ARRAY_SIZE (int ) ;
 int apmu_div_clks ;
 int apmu_gate_clks ;
 int apmu_mux_clks ;
 int mmp_register_div_clks (struct mmp_clk_unit*,int ,int ,int ) ;
 int mmp_register_gate_clks (struct mmp_clk_unit*,int ,int ,int ) ;
 int mmp_register_mux_clks (struct mmp_clk_unit*,int ,int ,int ) ;

__attribute__((used)) static void pxa168_axi_periph_clk_init(struct pxa168_clk_unit *pxa_unit)
{
 struct mmp_clk_unit *unit = &pxa_unit->unit;

 mmp_register_mux_clks(unit, apmu_mux_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_mux_clks));

 mmp_register_div_clks(unit, apmu_div_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_div_clks));

 mmp_register_gate_clks(unit, apmu_gate_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_gate_clks));
}
