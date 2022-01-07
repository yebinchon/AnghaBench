
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_gov_info_struct {int work; TYPE_1__* policy; int poll_int; } ;
struct TYPE_2__ {int cpu; } ;


 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int schedule_delayed_work_on (int ,int *,int) ;
 int spu_gov_work ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static void spu_gov_init_work(struct spu_gov_info_struct *info)
{
 int delay = usecs_to_jiffies(info->poll_int);
 INIT_DEFERRABLE_WORK(&info->work, spu_gov_work);
 schedule_delayed_work_on(info->policy->cpu, &info->work, delay);
}
