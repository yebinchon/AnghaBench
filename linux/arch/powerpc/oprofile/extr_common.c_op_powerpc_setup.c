
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reg_setup ) (int ,int *,int ) ;int num_counters; } ;


 int ctr ;
 TYPE_1__* model ;
 int on_each_cpu (int ,int *,int) ;
 int op_handle_interrupt ;
 int op_per_cpu_rc ;
 int op_powerpc_cpu_setup ;
 int release_pmc_hardware () ;
 int reserve_pmc_hardware (int ) ;
 int stub1 (int ,int *,int ) ;
 int sys ;

__attribute__((used)) static int op_powerpc_setup(void)
{
 int err;

 op_per_cpu_rc = 0;


 err = reserve_pmc_hardware(op_handle_interrupt);
 if (err)
  return err;


 op_per_cpu_rc = model->reg_setup(ctr, &sys, model->num_counters);

 if (op_per_cpu_rc)
  goto out;



 on_each_cpu(op_powerpc_cpu_setup, ((void*)0), 1);

out: if (op_per_cpu_rc) {

  release_pmc_hardware();
 }

 return op_per_cpu_rc;
}
