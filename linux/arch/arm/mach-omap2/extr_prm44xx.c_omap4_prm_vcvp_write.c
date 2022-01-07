
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ s32 ;


 int OMAP4430_PRM_PARTITION ;
 scalar_t__ PRM_INSTANCE_UNKNOWN ;
 int omap4_prminst_write_inst_reg (int ,int ,scalar_t__,int ) ;
 scalar_t__ omap4_prmst_get_prm_dev_inst () ;

void omap4_prm_vcvp_write(u32 val, u8 offset)
{
 s32 inst = omap4_prmst_get_prm_dev_inst();

 if (inst == PRM_INSTANCE_UNKNOWN)
  return;

 omap4_prminst_write_inst_reg(val, OMAP4430_PRM_PARTITION,
         inst, offset);
}
