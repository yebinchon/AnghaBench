
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_host_rm_core {int dummy; } ;
struct TYPE_2__ {struct kvmppc_host_rm_core* rm_core; } ;


 int cpu_nr_cores () ;
 int grab_next_hostcore (int,struct kvmppc_host_rm_core*,int,int) ;
 TYPE_1__* kvmppc_host_rm_ops_hv ;
 int smp_processor_id () ;
 int threads_shift ;

__attribute__((used)) static inline int find_available_hostcore(int action)
{
 int core;
 int my_core = smp_processor_id() >> threads_shift;
 struct kvmppc_host_rm_core *rm_core = kvmppc_host_rm_ops_hv->rm_core;

 core = grab_next_hostcore(my_core, rm_core, cpu_nr_cores(), action);
 if (core == -1)
  core = grab_next_hostcore(core, rm_core, my_core, action);

 return core;
}
