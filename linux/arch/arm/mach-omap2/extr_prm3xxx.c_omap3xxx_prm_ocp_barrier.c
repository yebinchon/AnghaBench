
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCP_MOD ;
 int OMAP3_PRM_REVISION_OFFSET ;
 int omap2_prm_read_mod_reg (int ,int ) ;

__attribute__((used)) static void omap3xxx_prm_ocp_barrier(void)
{
 omap2_prm_read_mod_reg(OCP_MOD, OMAP3_PRM_REVISION_OFFSET);
}
