
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cf_events {int alert; } ;


 unsigned long atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 int cpu_cf_events ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

unsigned long kernel_cpumcf_alert(int clear)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 unsigned long alert;

 alert = atomic64_read(&cpuhw->alert);
 if (clear)
  atomic64_set(&cpuhw->alert, 0);

 return alert;
}
