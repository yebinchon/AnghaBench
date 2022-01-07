
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mmd_write ) (struct gsw_mt753x*,int ,int ,int ,int) ;} ;


 int PHY_DEV1E ;
 int PHY_DEV1E_REG_0FE ;
 int PHY_DEV1E_REG_41 ;
 int PHY_DEV1F ;
 int PHY_DEV1F_REG_268 ;
 int PHY_DEV1F_REG_269 ;
 int RXADC_CONTROL_3 ;
 int RXADC_LDO_CONTROL_2 ;
 int TXVLD_DA_271 ;
 int TXVLD_DA_272 ;
 int TXVLD_DA_273 ;
 int stub1 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub2 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub3 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub4 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub5 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub6 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub7 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub8 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub9 (struct gsw_mt753x*,int ,int ,int ,int) ;

__attribute__((used)) static void mt7531_adjust_line_driving(struct gsw_mt753x *gsw, u32 port)
{

 gsw->mmd_write(gsw, port, PHY_DEV1E, RXADC_LDO_CONTROL_2, 0x2222);


 gsw->mmd_write(gsw, port, PHY_DEV1E, RXADC_CONTROL_3, 0x4444);


 gsw->mmd_write(gsw, port, PHY_DEV1F, TXVLD_DA_271, 0x2ca5);


 gsw->mmd_write(gsw, port, PHY_DEV1F, TXVLD_DA_272, 0xc6b);


 gsw->mmd_write(gsw, port, PHY_DEV1F, TXVLD_DA_273, 0x3000);


 gsw->mmd_write(gsw, port, PHY_DEV1E, PHY_DEV1E_REG_0FE, 0x2);


 gsw->mmd_write(gsw, port, PHY_DEV1E, PHY_DEV1E_REG_41, 0x3333);


 gsw->mmd_write(gsw, port, PHY_DEV1F, PHY_DEV1F_REG_268, 0x388);


 gsw->mmd_write(gsw, port, PHY_DEV1F, PHY_DEV1F_REG_269, 0x4448);
}
