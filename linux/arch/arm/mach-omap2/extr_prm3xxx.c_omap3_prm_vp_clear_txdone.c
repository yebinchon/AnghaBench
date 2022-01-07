
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct omap3_vp {int tranxdone_status; } ;


 int OCP_MOD ;
 int OMAP3_PRM_IRQSTATUS_MPU_OFFSET ;
 int omap2_prm_write_mod_reg (int ,int ,int ) ;
 struct omap3_vp* omap3_vp ;

__attribute__((used)) static void omap3_prm_vp_clear_txdone(u8 vp_id)
{
 struct omap3_vp *vp = &omap3_vp[vp_id];

 omap2_prm_write_mod_reg(vp->tranxdone_status,
    OCP_MOD, OMAP3_PRM_IRQSTATUS_MPU_OFFSET);
}
