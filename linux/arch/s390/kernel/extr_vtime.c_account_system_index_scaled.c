
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int stimescaled; } ;
typedef enum cpu_usage_stat { ____Placeholder_cpu_usage_stat } cpu_usage_stat ;


 int account_system_index_time (struct task_struct*,scalar_t__,int) ;
 scalar_t__ cputime_to_nsecs (int ) ;
 int scale_vtime (int ) ;

__attribute__((used)) static void account_system_index_scaled(struct task_struct *p, u64 cputime,
     enum cpu_usage_stat index)
{
 p->stimescaled += cputime_to_nsecs(scale_vtime(cputime));
 account_system_index_time(p, cputime_to_nsecs(cputime), index);
}
