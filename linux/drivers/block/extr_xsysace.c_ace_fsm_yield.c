
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {scalar_t__ fsm_continue_flag; int fsm_tasklet; int dev; } ;


 int dev_dbg (int ,char*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline void ace_fsm_yield(struct ace_device *ace)
{
 dev_dbg(ace->dev, "ace_fsm_yield()\n");
 tasklet_schedule(&ace->fsm_tasklet);
 ace->fsm_continue_flag = 0;
}
