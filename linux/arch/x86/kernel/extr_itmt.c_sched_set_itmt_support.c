
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int itmt_root_table ;
 int itmt_sysctl_header ;
 int itmt_update_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rebuild_sched_domains () ;
 int register_sysctl_table (int ) ;
 int sched_itmt_capable ;
 int sysctl_sched_itmt_enabled ;
 int x86_topology_update ;

int sched_set_itmt_support(void)
{
 mutex_lock(&itmt_update_mutex);

 if (sched_itmt_capable) {
  mutex_unlock(&itmt_update_mutex);
  return 0;
 }

 itmt_sysctl_header = register_sysctl_table(itmt_root_table);
 if (!itmt_sysctl_header) {
  mutex_unlock(&itmt_update_mutex);
  return -ENOMEM;
 }

 sched_itmt_capable = 1;

 sysctl_sched_itmt_enabled = 1;

 x86_topology_update = 1;
 rebuild_sched_domains();

 mutex_unlock(&itmt_update_mutex);

 return 0;
}
