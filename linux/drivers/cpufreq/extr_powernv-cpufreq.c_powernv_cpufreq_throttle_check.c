
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct chip {int throttled; size_t throttle_reason; int id; int throttle_turbo; int throttle_sub_turbo; } ;
struct TYPE_2__ {unsigned int max; unsigned int nominal; } ;


 unsigned long PMSR_PSAFE_ENABLE ;
 unsigned long PMSR_SPR_EM_DISABLE ;
 int SPRN_PMSR ;
 int chip_info ;
 int extract_max_pstate (unsigned long) ;
 unsigned long get_pmspr (int ) ;
 int idx_to_pstate (unsigned int) ;
 TYPE_1__ powernv_pstate_info ;
 int pr_info (char*,...) ;
 int pr_warn (char*) ;
 int pr_warn_once (char*,unsigned int,int ,int ,int ) ;
 unsigned int pstate_to_idx (int ) ;
 unsigned int smp_processor_id () ;
 struct chip* this_cpu_read (int ) ;
 int * throttle_reason ;
 int throttled ;
 int trace_powernv_throttle (int ,int ,int ) ;

__attribute__((used)) static void powernv_cpufreq_throttle_check(void *data)
{
 struct chip *chip;
 unsigned int cpu = smp_processor_id();
 unsigned long pmsr;
 u8 pmsr_pmax;
 unsigned int pmsr_pmax_idx;

 pmsr = get_pmspr(SPRN_PMSR);
 chip = this_cpu_read(chip_info);


 pmsr_pmax = extract_max_pstate(pmsr);
 pmsr_pmax_idx = pstate_to_idx(pmsr_pmax);
 if (pmsr_pmax_idx != powernv_pstate_info.max) {
  if (chip->throttled)
   goto next;
  chip->throttled = 1;
  if (pmsr_pmax_idx > powernv_pstate_info.nominal) {
   pr_warn_once("CPU %d on Chip %u has Pmax(0x%x) reduced below that of nominal frequency(0x%x)\n",
         cpu, chip->id, pmsr_pmax,
         idx_to_pstate(powernv_pstate_info.nominal));
   chip->throttle_sub_turbo++;
  } else {
   chip->throttle_turbo++;
  }
  trace_powernv_throttle(chip->id,
          throttle_reason[chip->throttle_reason],
          pmsr_pmax);
 } else if (chip->throttled) {
  chip->throttled = 0;
  trace_powernv_throttle(chip->id,
          throttle_reason[chip->throttle_reason],
          pmsr_pmax);
 }


next:
 if (pmsr & PMSR_PSAFE_ENABLE) {
  throttled = 1;
  pr_info("Pstate set to safe frequency\n");
 }


 if (pmsr & PMSR_SPR_EM_DISABLE) {
  throttled = 1;
  pr_info("Frequency Control disabled from OS\n");
 }

 if (throttled) {
  pr_info("PMSR = %16lx\n", pmsr);
  pr_warn("CPU Frequency could be throttled\n");
 }
}
