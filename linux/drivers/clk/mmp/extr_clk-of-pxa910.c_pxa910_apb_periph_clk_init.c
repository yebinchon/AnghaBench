
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_unit {int dummy; } ;
struct pxa910_clk_unit {int apbcp_base; int apbc_base; struct mmp_clk_unit unit; } ;


 int ARRAY_SIZE (int ) ;
 int apbc_gate_clks ;
 int apbc_mux_clks ;
 int apbcp_gate_clks ;
 int apbcp_mux_clks ;
 int mmp_register_gate_clks (struct mmp_clk_unit*,int ,int ,int ) ;
 int mmp_register_mux_clks (struct mmp_clk_unit*,int ,int ,int ) ;

__attribute__((used)) static void pxa910_apb_periph_clk_init(struct pxa910_clk_unit *pxa_unit)
{
 struct mmp_clk_unit *unit = &pxa_unit->unit;

 mmp_register_mux_clks(unit, apbc_mux_clks, pxa_unit->apbc_base,
    ARRAY_SIZE(apbc_mux_clks));

 mmp_register_mux_clks(unit, apbcp_mux_clks, pxa_unit->apbcp_base,
    ARRAY_SIZE(apbcp_mux_clks));

 mmp_register_gate_clks(unit, apbc_gate_clks, pxa_unit->apbc_base,
    ARRAY_SIZE(apbc_gate_clks));

 mmp_register_gate_clks(unit, apbcp_gate_clks, pxa_unit->apbcp_base,
    ARRAY_SIZE(apbcp_gate_clks));
}
