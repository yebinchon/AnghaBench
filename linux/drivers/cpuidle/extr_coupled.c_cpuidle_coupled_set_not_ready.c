
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int online_count; int ready_waiting_counts; } ;


 int EINVAL ;
 int MAX_WAITING_CPUS ;
 int WAITING_BITS ;
 int atomic_add_unless (int *,int ,int) ;

__attribute__((used)) static
inline int cpuidle_coupled_set_not_ready(struct cpuidle_coupled *coupled)
{
 int all;
 int ret;

 all = coupled->online_count | (coupled->online_count << WAITING_BITS);
 ret = atomic_add_unless(&coupled->ready_waiting_counts,
  -MAX_WAITING_CPUS, all);

 return ret ? 0 : -EINVAL;
}
