
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct omap4_vp {int tranxdone_status; int irqstatus_mpu; } ;


 int OMAP4430_PRM_OCP_SOCKET_INST ;
 int OMAP4430_PRM_PARTITION ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;
 struct omap4_vp* omap4_vp ;

__attribute__((used)) static u32 omap4_prm_vp_check_txdone(u8 vp_id)
{
 struct omap4_vp *vp = &omap4_vp[vp_id];
 u32 irqstatus;

 irqstatus = omap4_prminst_read_inst_reg(OMAP4430_PRM_PARTITION,
      OMAP4430_PRM_OCP_SOCKET_INST,
      vp->irqstatus_mpu);
 return irqstatus & vp->tranxdone_status;
}
