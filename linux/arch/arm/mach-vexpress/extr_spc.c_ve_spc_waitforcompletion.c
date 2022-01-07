
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_rsp_stat; int done; } ;


 int EIO ;
 int ETIMEDOUT ;
 int STAT_COMPLETE (int) ;
 int TIMEOUT_US ;
 TYPE_1__* info ;
 int usecs_to_jiffies (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int ve_spc_waitforcompletion(int req_type)
{
 int ret = wait_for_completion_interruptible_timeout(
   &info->done, usecs_to_jiffies(TIMEOUT_US));
 if (ret == 0)
  ret = -ETIMEDOUT;
 else if (ret > 0)
  ret = info->cur_rsp_stat & STAT_COMPLETE(req_type) ? 0 : -EIO;
 return ret;
}
