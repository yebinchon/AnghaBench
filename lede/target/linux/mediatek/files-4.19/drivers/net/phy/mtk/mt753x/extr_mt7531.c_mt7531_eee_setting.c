
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mmd_read ) (struct gsw_mt753x*,int,int,int) ;int (* mii_write ) (struct gsw_mt753x*,int,int,int) ;int (* mmd_write ) (struct gsw_mt753x*,int,int,int,int) ;} ;


 int DESCRAMBLER_CLEAR_EN ;
 int DSP_CH ;
 int DSP_NOD_ADDR ;
 int PHY_DEV1E ;
 int PHY_DEV1E_REG_189 ;
 int stub1 (struct gsw_mt753x*,int,int,int) ;
 int stub10 (struct gsw_mt753x*,int,int,int) ;
 int stub11 (struct gsw_mt753x*,int,int,int) ;
 int stub12 (struct gsw_mt753x*,int,int,int) ;
 int stub13 (struct gsw_mt753x*,int,int,int) ;
 int stub14 (struct gsw_mt753x*,int,int,int) ;
 int stub2 (struct gsw_mt753x*,int,int,int,int) ;
 int stub3 (struct gsw_mt753x*,int,int,int) ;
 int stub4 (struct gsw_mt753x*,int,int,int,int) ;
 int stub5 (struct gsw_mt753x*,int,int,int) ;
 int stub6 (struct gsw_mt753x*,int,int,int) ;
 int stub7 (struct gsw_mt753x*,int,int,int) ;
 int stub8 (struct gsw_mt753x*,int,int,int) ;
 int stub9 (struct gsw_mt753x*,int,int,int) ;

__attribute__((used)) static void mt7531_eee_setting(struct gsw_mt753x *gsw, u32 port)
{
 u32 tr_reg_control;
 u32 val;


 val = gsw->mmd_read(gsw, port, PHY_DEV1E, PHY_DEV1E_REG_189);
 val &= ~DESCRAMBLER_CLEAR_EN;
 gsw->mmd_write(gsw, port, PHY_DEV1E, PHY_DEV1E_REG_189, val);


 gsw->mii_write(gsw, port, 0x1f, 0x52b5);
 gsw->mmd_write(gsw, port, 0x1e, 0x2d1, 0);
 tr_reg_control = (1 << 15) | (0 << 13) | (DSP_CH << 11) |
    (DSP_NOD_ADDR << 7) | (0x8 << 1);
 gsw->mii_write(gsw, port, 17, 0x1b);
 gsw->mii_write(gsw, port, 18, 0);
 gsw->mii_write(gsw, port, 16, tr_reg_control);
 tr_reg_control = (1 << 15) | (0 << 13) | (DSP_CH << 11) |
    (DSP_NOD_ADDR << 7) | (0xf << 1);
 gsw->mii_write(gsw, port, 17, 0);
 gsw->mii_write(gsw, port, 18, 0);
 gsw->mii_write(gsw, port, 16, tr_reg_control);

 tr_reg_control = (1 << 15) | (0 << 13) | (DSP_CH << 11) |
    (DSP_NOD_ADDR << 7) | (0x10 << 1);
 gsw->mii_write(gsw, port, 17, 0x500);
 gsw->mii_write(gsw, port, 18, 0);
 gsw->mii_write(gsw, port, 16, tr_reg_control);
 gsw->mii_write(gsw, port, 0x1f, 0);
}
