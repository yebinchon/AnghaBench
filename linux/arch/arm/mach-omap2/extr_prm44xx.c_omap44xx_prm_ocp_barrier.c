
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP4430_PRM_OCP_SOCKET_INST ;
 int OMAP4_REVISION_PRM_OFFSET ;
 int omap4_prm_read_inst_reg (int ,int ) ;

__attribute__((used)) static void omap44xx_prm_ocp_barrier(void)
{
 omap4_prm_read_inst_reg(OMAP4430_PRM_OCP_SOCKET_INST,
    OMAP4_REVISION_PRM_OFFSET);
}
