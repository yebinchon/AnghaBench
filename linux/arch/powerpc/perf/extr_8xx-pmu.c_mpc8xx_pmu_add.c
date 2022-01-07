
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;
typedef int s64 ;






 int SPRN_ICTRL ;
 int atomic_inc_return (int *) ;
 int dtlb_miss_counter ;
 int dtlb_miss_ref ;
 int event_type (struct perf_event*) ;
 int get_insn_ctr () ;
 int get_tb () ;
 int insn_ctr_ref ;
 int itlb_miss_counter ;
 int itlb_miss_ref ;
 int local64_set (int *,int ) ;
 int mtspr (int ,int) ;
 int patch__dtlbmiss_exit_1 ;
 int patch__dtlbmiss_exit_2 ;
 int patch__dtlbmiss_exit_3 ;
 int patch__dtlbmiss_perf ;
 int patch__itlbmiss_exit_1 ;
 int patch__itlbmiss_exit_2 ;
 int patch__itlbmiss_perf ;
 int patch_branch_site (int *,unsigned long,int ) ;
 unsigned long patch_site_addr (int *) ;

__attribute__((used)) static int mpc8xx_pmu_add(struct perf_event *event, int flags)
{
 int type = event_type(event);
 s64 val = 0;

 if (type < 0)
  return type;

 switch (type) {
 case 131:
  val = get_tb();
  break;
 case 129:
  if (atomic_inc_return(&insn_ctr_ref) == 1)
   mtspr(SPRN_ICTRL, 0xc0080007);
  val = get_insn_ctr();
  break;
 case 128:
  if (atomic_inc_return(&itlb_miss_ref) == 1) {
   unsigned long target = patch_site_addr(&patch__itlbmiss_perf);

   patch_branch_site(&patch__itlbmiss_exit_1, target, 0);

   patch_branch_site(&patch__itlbmiss_exit_2, target, 0);

  }
  val = itlb_miss_counter;
  break;
 case 130:
  if (atomic_inc_return(&dtlb_miss_ref) == 1) {
   unsigned long target = patch_site_addr(&patch__dtlbmiss_perf);

   patch_branch_site(&patch__dtlbmiss_exit_1, target, 0);
   patch_branch_site(&patch__dtlbmiss_exit_2, target, 0);
   patch_branch_site(&patch__dtlbmiss_exit_3, target, 0);
  }
  val = dtlb_miss_counter;
  break;
 }
 local64_set(&event->hw.prev_count, val);
 return 0;
}
