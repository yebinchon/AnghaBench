
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mid_pwr {scalar_t__ regs; } ;


 scalar_t__ PM_CMD ;
 int PM_CMD_CMD (int ) ;
 int PM_CMD_CM_IMMEDIATE ;
 int mid_pwr_wait (struct mid_pwr*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mid_pwr_wait_for_cmd(struct mid_pwr *pwr, u8 cmd)
{
 writel(PM_CMD_CMD(cmd) | PM_CMD_CM_IMMEDIATE, pwr->regs + PM_CMD);
 return mid_pwr_wait(pwr);
}
