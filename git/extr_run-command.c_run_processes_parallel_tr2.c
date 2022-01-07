
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_finished_fn ;
typedef int start_failure_fn ;
typedef int get_next_task_fn ;


 int online_cpus () ;
 int run_processes_parallel (int,int ,int ,int ,void*) ;
 int trace2_region_enter_printf (char const*,char const*,int *,char*,int) ;
 int trace2_region_leave (char const*,char const*,int *) ;

int run_processes_parallel_tr2(int n, get_next_task_fn get_next_task,
          start_failure_fn start_failure,
          task_finished_fn task_finished, void *pp_cb,
          const char *tr2_category, const char *tr2_label)
{
 int result;

 trace2_region_enter_printf(tr2_category, tr2_label, ((void*)0), "max:%d",
       ((n < 1) ? online_cpus() : n));

 result = run_processes_parallel(n, get_next_task, start_failure,
     task_finished, pp_cb);

 trace2_region_leave(tr2_category, tr2_label, ((void*)0));

 return result;
}
