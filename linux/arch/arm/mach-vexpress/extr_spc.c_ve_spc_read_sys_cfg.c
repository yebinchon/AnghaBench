
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int sem; scalar_t__ cur_rsp_mask; scalar_t__ baseaddr; int done; } ;


 scalar_t__ COMMS ;
 int ETIME ;
 scalar_t__ RESPONSE_MASK (int ) ;
 int SPC_SYS_CFG ;
 scalar_t__ SYSCFG_RDATA ;
 int SYSCFG_START ;
 int TIMEOUT_US ;
 scalar_t__ down_timeout (int *,int ) ;
 TYPE_1__* info ;
 int init_completion (int *) ;
 int readl (scalar_t__) ;
 int up (int *) ;
 int usecs_to_jiffies (int ) ;
 int ve_spc_waitforcompletion (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ve_spc_read_sys_cfg(int func, int offset, uint32_t *data)
{
 int ret;

 if (down_timeout(&info->sem, usecs_to_jiffies(TIMEOUT_US)))
  return -ETIME;

 init_completion(&info->done);
 info->cur_rsp_mask = RESPONSE_MASK(SPC_SYS_CFG);


 writel(SYSCFG_START | func | offset >> 2, info->baseaddr + COMMS);
 ret = ve_spc_waitforcompletion(SPC_SYS_CFG);

 if (ret == 0)
  *data = readl(info->baseaddr + SYSCFG_RDATA);

 info->cur_rsp_mask = 0;
 up(&info->sem);

 return ret;
}
