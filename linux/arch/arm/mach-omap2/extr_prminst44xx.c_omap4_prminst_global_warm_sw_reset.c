
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;


 int OMAP4430_PRM_PARTITION ;
 int OMAP4430_RST_GLOBAL_WARM_SW_MASK ;
 int OMAP4_PRM_RSTCTRL_OFFSET ;
 scalar_t__ PRM_INSTANCE_UNKNOWN ;
 int omap4_prminst_read_inst_reg (int ,scalar_t__,int ) ;
 int omap4_prminst_write_inst_reg (int ,int ,scalar_t__,int ) ;
 scalar_t__ omap4_prmst_get_prm_dev_inst () ;

void omap4_prminst_global_warm_sw_reset(void)
{
 u32 v;
 s32 inst = omap4_prmst_get_prm_dev_inst();

 if (inst == PRM_INSTANCE_UNKNOWN)
  return;

 v = omap4_prminst_read_inst_reg(OMAP4430_PRM_PARTITION, inst,
     OMAP4_PRM_RSTCTRL_OFFSET);
 v |= OMAP4430_RST_GLOBAL_WARM_SW_MASK;
 omap4_prminst_write_inst_reg(v, OMAP4430_PRM_PARTITION,
     inst, OMAP4_PRM_RSTCTRL_OFFSET);


 v = omap4_prminst_read_inst_reg(OMAP4430_PRM_PARTITION,
        inst, OMAP4_PRM_RSTCTRL_OFFSET);
}
