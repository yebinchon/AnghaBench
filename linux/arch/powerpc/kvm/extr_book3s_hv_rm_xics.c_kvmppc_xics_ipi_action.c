
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rm_action; } ;
struct kvmppc_host_rm_core {TYPE_1__ rm_state; int * rm_data; } ;
struct TYPE_4__ {struct kvmppc_host_rm_core* rm_core; } ;


 TYPE_2__* kvmppc_host_rm_ops_hv ;
 int rm_host_ipi_action (scalar_t__,int *) ;
 unsigned int smp_processor_id () ;
 int smp_wmb () ;
 unsigned int threads_shift ;

void kvmppc_xics_ipi_action(void)
{
 int core;
 unsigned int cpu = smp_processor_id();
 struct kvmppc_host_rm_core *rm_corep;

 core = cpu >> threads_shift;
 rm_corep = &kvmppc_host_rm_ops_hv->rm_core[core];

 if (rm_corep->rm_data) {
  rm_host_ipi_action(rm_corep->rm_state.rm_action,
       rm_corep->rm_data);

  rm_corep->rm_data = ((void*)0);
  smp_wmb();
  rm_corep->rm_state.rm_action = 0;
 }
}
