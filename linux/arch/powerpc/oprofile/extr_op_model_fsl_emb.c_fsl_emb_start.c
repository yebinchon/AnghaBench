
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {scalar_t__ enabled; } ;


 int MSR_PMM ;
 int PMRN_PMGC0 ;
 int ctr_write (int,int ) ;
 int mfmsr () ;
 int mfpmr (int ) ;
 int mtmsr (int) ;
 int num_counters ;
 int oprofile_running ;
 int pmc_start_ctr (int,int) ;
 int pmc_start_ctrs (int) ;
 int pr_debug (char*,int ,int ) ;
 int * reset_value ;
 int set_pmc_marked (int,int,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int fsl_emb_start(struct op_counter_config *ctr)
{
 int i;

 mtmsr(mfmsr() | MSR_PMM);

 for (i = 0; i < num_counters; ++i) {
  if (ctr[i].enabled) {
   ctr_write(i, reset_value[i]);


   set_pmc_marked(i, 1, 0);
   pmc_start_ctr(i, 1);
  } else {
   ctr_write(i, 0);


   pmc_start_ctr(i, 0);
  }
 }




 pmc_start_ctrs(1);

 oprofile_running = 1;

 pr_debug("start on cpu %d, pmgc0 %x\n", smp_processor_id(),
   mfpmr(PMRN_PMGC0));

 return 0;
}
