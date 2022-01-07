
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rm_core; } ;
struct TYPE_4__ {scalar_t__ in_host; } ;
struct TYPE_5__ {TYPE_1__ rm_state; } ;


 scalar_t__ cpu_thread_in_core (unsigned int) ;
 TYPE_3__* kvmppc_host_rm_ops_hv ;
 unsigned int threads_shift ;

__attribute__((used)) static inline int kvmppc_clear_host_core(unsigned int cpu)
{
 int core;

 if (!kvmppc_host_rm_ops_hv || cpu_thread_in_core(cpu))
  return 0;





 core = cpu >> threads_shift;
 kvmppc_host_rm_ops_hv->rm_core[core].rm_state.in_host = 0;
 return 0;
}
