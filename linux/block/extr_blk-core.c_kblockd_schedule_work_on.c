
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kblockd_workqueue ;
 int queue_work_on (int,int ,struct work_struct*) ;

int kblockd_schedule_work_on(int cpu, struct work_struct *work)
{
 return queue_work_on(cpu, kblockd_workqueue, work);
}
