
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; } ;


 int LAZY_THREAD_COST ;
 int ignore_case ;
 int lazy_nr_dir_threads ;
 int lazy_try_threaded ;
 int online_cpus () ;

__attribute__((used)) static int lookup_lazy_params(struct index_state *istate)
{
 int nr_cpus;

 lazy_nr_dir_threads = 0;

 if (!lazy_try_threaded)
  return 0;






 if (!ignore_case)
  return 0;

 nr_cpus = online_cpus();
 if (nr_cpus < 2)
  return 0;

 if (istate->cache_nr < 2 * LAZY_THREAD_COST)
  return 0;

 if (istate->cache_nr < nr_cpus * LAZY_THREAD_COST)
  nr_cpus = istate->cache_nr / LAZY_THREAD_COST;
 lazy_nr_dir_threads = nr_cpus;
 return lazy_nr_dir_threads;
}
