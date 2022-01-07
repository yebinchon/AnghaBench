
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {int kernel; int user; int event; } ;


 int init_pmc_stop (int) ;
 int num_counters ;
 int pmc_stop_ctrs () ;
 int set_pmc_event (int,int ) ;
 int set_pmc_user_kernel (int,int ,int ) ;

__attribute__((used)) static int fsl_emb_cpu_setup(struct op_counter_config *ctr)
{
 int i;


 pmc_stop_ctrs();

 for (i = 0;i < num_counters;i++) {
  init_pmc_stop(i);

  set_pmc_event(i, ctr[i].event);

  set_pmc_user_kernel(i, ctr[i].user, ctr[i].kernel);
 }

 return 0;
}
