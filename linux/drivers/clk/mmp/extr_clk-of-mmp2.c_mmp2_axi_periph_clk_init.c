
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mmp_clk_unit {int dummy; } ;
struct mmp2_clk_unit {scalar_t__ apmu_base; struct mmp_clk_unit unit; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {scalar_t__ reg_clk_ctrl; } ;
struct TYPE_7__ {TYPE_1__ reg_info; } ;


 scalar_t__ APMU_CCIC0 ;
 scalar_t__ APMU_CCIC1 ;
 scalar_t__ APMU_SDH0 ;
 int ARRAY_SIZE (int ) ;
 int CLK_SET_RATE_PARENT ;
 int MMP2_CLK_CCIC0_MIX ;
 int MMP2_CLK_CCIC1_MIX ;
 int apmu_div_clks ;
 int apmu_gate_clks ;
 int apmu_mux_clks ;
 int ccic0_lock ;
 TYPE_2__ ccic0_mix_config ;
 int ccic1_lock ;
 TYPE_2__ ccic1_mix_config ;
 int ccic_parent_names ;
 int mmp_clk_add (struct mmp_clk_unit*,int ,struct clk*) ;
 struct clk* mmp_clk_register_mix (int *,char*,int ,int ,int ,TYPE_2__*,int *) ;
 int mmp_register_div_clks (struct mmp_clk_unit*,int ,scalar_t__,int ) ;
 int mmp_register_gate_clks (struct mmp_clk_unit*,int ,scalar_t__,int ) ;
 int mmp_register_mux_clks (struct mmp_clk_unit*,int ,scalar_t__,int ) ;
 int sdh_lock ;
 TYPE_2__ sdh_mix_config ;
 int sdh_parent_names ;

__attribute__((used)) static void mmp2_axi_periph_clk_init(struct mmp2_clk_unit *pxa_unit)
{
 struct clk *clk;
 struct mmp_clk_unit *unit = &pxa_unit->unit;

 sdh_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_SDH0;
 clk = mmp_clk_register_mix(((void*)0), "sdh_mix_clk", sdh_parent_names,
     ARRAY_SIZE(sdh_parent_names),
     CLK_SET_RATE_PARENT,
     &sdh_mix_config, &sdh_lock);

 ccic0_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_CCIC0;
 clk = mmp_clk_register_mix(((void*)0), "ccic0_mix_clk", ccic_parent_names,
     ARRAY_SIZE(ccic_parent_names),
     CLK_SET_RATE_PARENT,
     &ccic0_mix_config, &ccic0_lock);
 mmp_clk_add(unit, MMP2_CLK_CCIC0_MIX, clk);

 ccic1_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_CCIC1;
 clk = mmp_clk_register_mix(((void*)0), "ccic1_mix_clk", ccic_parent_names,
     ARRAY_SIZE(ccic_parent_names),
     CLK_SET_RATE_PARENT,
     &ccic1_mix_config, &ccic1_lock);
 mmp_clk_add(unit, MMP2_CLK_CCIC1_MIX, clk);

 mmp_register_mux_clks(unit, apmu_mux_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_mux_clks));

 mmp_register_div_clks(unit, apmu_div_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_div_clks));

 mmp_register_gate_clks(unit, apmu_gate_clks, pxa_unit->apmu_base,
    ARRAY_SIZE(apmu_gate_clks));
}
