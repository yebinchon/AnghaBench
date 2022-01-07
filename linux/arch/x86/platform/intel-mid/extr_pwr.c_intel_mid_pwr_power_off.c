
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {scalar_t__ regs; } ;


 int CMD_SET_CFG ;
 scalar_t__ PM_CMD ;
 int PM_CMD_CFG_TRIGGER_NC ;
 int PM_CMD_CMD (int ) ;
 int PM_CMD_CM_TRIGGER ;
 int PM_CMD_SYS_STATE_S5 ;
 int TRIGGER_NC_MSG_2 ;
 int mid_pwr_wait (struct mid_pwr*) ;
 struct mid_pwr* midpwr ;
 int writel (int,scalar_t__) ;

void intel_mid_pwr_power_off(void)
{
 struct mid_pwr *pwr = midpwr;
 u32 cmd = PM_CMD_SYS_STATE_S5 |
    PM_CMD_CMD(CMD_SET_CFG) |
    PM_CMD_CM_TRIGGER |
    PM_CMD_CFG_TRIGGER_NC |
    TRIGGER_NC_MSG_2;


 writel(cmd, pwr->regs + PM_CMD);
 mid_pwr_wait(pwr);
}
