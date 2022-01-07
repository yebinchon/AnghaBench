
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_threads_per_core ;
 int smp_num_siblings ;

void nlm_prepare_cpus(unsigned int max_cpus)
{

 smp_num_siblings = nlm_threads_per_core;
}
