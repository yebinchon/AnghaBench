
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;






 unsigned int PPC_INST_MFSPR ;
 int R10 ;
 int SPRN_ICTRL ;
 int SPRN_SPRG_SCRATCH0 ;
 unsigned int __PPC_RS (int ) ;
 unsigned int __PPC_SPR (int ) ;
 int atomic_dec_return (int *) ;
 int dtlb_miss_ref ;
 int event_type (struct perf_event*) ;
 int insn_ctr_ref ;
 int itlb_miss_ref ;
 int mpc8xx_pmu_read (struct perf_event*) ;
 int mtspr (int ,int) ;
 int patch__dtlbmiss_exit_1 ;
 int patch__dtlbmiss_exit_2 ;
 int patch__dtlbmiss_exit_3 ;
 int patch__itlbmiss_exit_1 ;
 int patch__itlbmiss_exit_2 ;
 int patch_instruction_site (int *,unsigned int) ;

__attribute__((used)) static void mpc8xx_pmu_del(struct perf_event *event, int flags)
{

 unsigned int insn = PPC_INST_MFSPR | __PPC_RS(R10) |
       __PPC_SPR(SPRN_SPRG_SCRATCH0);

 mpc8xx_pmu_read(event);


 switch (event_type(event)) {
 case 131:
  break;
 case 129:
  if (atomic_dec_return(&insn_ctr_ref) == 0)
   mtspr(SPRN_ICTRL, 7);
  break;
 case 128:
  if (atomic_dec_return(&itlb_miss_ref) == 0) {
   patch_instruction_site(&patch__itlbmiss_exit_1, insn);

   patch_instruction_site(&patch__itlbmiss_exit_2, insn);

  }
  break;
 case 130:
  if (atomic_dec_return(&dtlb_miss_ref) == 0) {
   patch_instruction_site(&patch__dtlbmiss_exit_1, insn);
   patch_instruction_site(&patch__dtlbmiss_exit_2, insn);
   patch_instruction_site(&patch__dtlbmiss_exit_3, insn);
  }
  break;
 }
}
