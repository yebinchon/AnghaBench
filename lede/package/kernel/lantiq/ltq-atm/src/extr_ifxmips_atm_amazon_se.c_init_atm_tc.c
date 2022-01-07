
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DREG_AR_CTRL ;
 int DREG_AR_IDLE0 ;
 int DREG_AR_IDLE1 ;
 int DREG_AT_CTRL ;
 int DREG_AT_IDLE0 ;
 int DREG_AT_IDLE1 ;
 int FFSM_CFG0 ;
 int FFSM_CFG1 ;
 int FFSM_DBA0 ;
 int FFSM_DBA1 ;
 int FFSM_IDLE_HEAD_BC0 ;
 int FFSM_IDLE_HEAD_BC1 ;
 int IFX_REG_W32 (int,int ) ;
 int RFBI_CFG ;
 int SFSM_CBA0 ;
 int SFSM_CBA1 ;
 int SFSM_CFG0 ;
 int SFSM_CFG1 ;
 int SFSM_DBA0 ;
 int SFSM_DBA1 ;

__attribute__((used)) static inline void init_atm_tc(void)
{
    IFX_REG_W32(0x0000, DREG_AT_CTRL);
    IFX_REG_W32(0x0000, DREG_AR_CTRL);
    IFX_REG_W32(0x0, DREG_AT_IDLE0);
    IFX_REG_W32(0x0, DREG_AT_IDLE1);
    IFX_REG_W32(0x0, DREG_AR_IDLE0);
    IFX_REG_W32(0x0, DREG_AR_IDLE1);
    IFX_REG_W32(0x40, RFBI_CFG);
    IFX_REG_W32(0x0700, SFSM_DBA0);
    IFX_REG_W32(0x0818, SFSM_DBA1);
    IFX_REG_W32(0x0930, SFSM_CBA0);
    IFX_REG_W32(0x0944, SFSM_CBA1);
    IFX_REG_W32(0x14014, SFSM_CFG0);
    IFX_REG_W32(0x14014, SFSM_CFG1);
    IFX_REG_W32(0x0958, FFSM_DBA0);
    IFX_REG_W32(0x09AC, FFSM_DBA1);
    IFX_REG_W32(0x10006, FFSM_CFG0);
    IFX_REG_W32(0x10006, FFSM_CFG1);
    IFX_REG_W32(0x00000001, FFSM_IDLE_HEAD_BC0);
    IFX_REG_W32(0x00000001, FFSM_IDLE_HEAD_BC1);
}
