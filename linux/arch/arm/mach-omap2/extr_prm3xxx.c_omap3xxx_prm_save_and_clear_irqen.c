
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OCP_MOD ;
 int OMAP3_PRM_IRQENABLE_MPU_OFFSET ;
 int OMAP3_PRM_REVISION_OFFSET ;
 int omap2_prm_read_mod_reg (int ,int ) ;
 int omap2_prm_write_mod_reg (int ,int ,int ) ;

__attribute__((used)) static void omap3xxx_prm_save_and_clear_irqen(u32 *saved_mask)
{
 saved_mask[0] = omap2_prm_read_mod_reg(OCP_MOD,
            OMAP3_PRM_IRQENABLE_MPU_OFFSET);
 omap2_prm_write_mod_reg(0, OCP_MOD, OMAP3_PRM_IRQENABLE_MPU_OFFSET);


 omap2_prm_read_mod_reg(OCP_MOD, OMAP3_PRM_REVISION_OFFSET);
}
