
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * itmt_sysctl_header ;
 int itmt_update_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rebuild_sched_domains () ;
 int sched_itmt_capable ;
 scalar_t__ sysctl_sched_itmt_enabled ;
 int unregister_sysctl_table (int *) ;
 int x86_topology_update ;

void sched_clear_itmt_support(void)
{
 mutex_lock(&itmt_update_mutex);

 if (!sched_itmt_capable) {
  mutex_unlock(&itmt_update_mutex);
  return;
 }
 sched_itmt_capable = 0;

 if (itmt_sysctl_header) {
  unregister_sysctl_table(itmt_sysctl_header);
  itmt_sysctl_header = ((void*)0);
 }

 if (sysctl_sched_itmt_enabled) {

  sysctl_sched_itmt_enabled = 0;
  x86_topology_update = 1;
  rebuild_sched_domains();
 }

 mutex_unlock(&itmt_update_mutex);
}
