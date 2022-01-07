
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nullb_cmd {int timer; TYPE_2__* nq; } ;
typedef int ktime_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int completion_nsec; } ;


 int HRTIMER_MODE_REL ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static void null_cmd_end_timer(struct nullb_cmd *cmd)
{
 ktime_t kt = cmd->nq->dev->completion_nsec;

 hrtimer_start(&cmd->timer, kt, HRTIMER_MODE_REL);
}
