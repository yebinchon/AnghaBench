
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct omap4_vp {int irqstatus_mpu; int tranxdone_status; } ;


 int OMAP4430_PRM_OCP_SOCKET_INST ;
 int OMAP4430_PRM_PARTITION ;
 int omap4_prminst_write_inst_reg (int ,int ,int ,int ) ;
 struct omap4_vp* omap4_vp ;

__attribute__((used)) static void omap4_prm_vp_clear_txdone(u8 vp_id)
{
 struct omap4_vp *vp = &omap4_vp[vp_id];

 omap4_prminst_write_inst_reg(vp->tranxdone_status,
         OMAP4430_PRM_PARTITION,
         OMAP4430_PRM_OCP_SOCKET_INST,
         vp->irqstatus_mpu);
}
