
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 unsigned long CAL2_LATCH ;
 unsigned long CAL2_MS ;
 int CAL2_PIT_LOOPS ;
 unsigned long CAL_LATCH ;
 unsigned long CAL_MS ;
 int CAL_PIT_LOOPS ;
 scalar_t__ ULLONG_MAX ;
 unsigned long ULONG_MAX ;
 scalar_t__ calc_hpet_ref (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ calc_pmtimer_ref (scalar_t__,scalar_t__,scalar_t__) ;
 int do_div (scalar_t__,unsigned long) ;
 int is_hpet_enabled () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 unsigned long pit_calibrate_tsc (unsigned long,unsigned long,int) ;
 int pr_info (char*,...) ;
 int pr_notice (char*) ;
 int pr_warn (char*,...) ;
 scalar_t__ tsc_read_refs (scalar_t__*,int) ;

__attribute__((used)) static unsigned long pit_hpet_ptimer_calibrate_cpu(void)
{
 u64 tsc1, tsc2, delta, ref1, ref2;
 unsigned long tsc_pit_min = ULONG_MAX, tsc_ref_min = ULONG_MAX;
 unsigned long flags, latch, ms;
 int hpet = is_hpet_enabled(), i, loopmin;
 latch = CAL_LATCH;
 ms = CAL_MS;
 loopmin = CAL_PIT_LOOPS;

 for (i = 0; i < 3; i++) {
  unsigned long tsc_pit_khz;







  local_irq_save(flags);
  tsc1 = tsc_read_refs(&ref1, hpet);
  tsc_pit_khz = pit_calibrate_tsc(latch, ms, loopmin);
  tsc2 = tsc_read_refs(&ref2, hpet);
  local_irq_restore(flags);


  tsc_pit_min = min(tsc_pit_min, tsc_pit_khz);


  if (ref1 == ref2)
   continue;


  if (tsc1 == ULLONG_MAX || tsc2 == ULLONG_MAX)
   continue;

  tsc2 = (tsc2 - tsc1) * 1000000LL;
  if (hpet)
   tsc2 = calc_hpet_ref(tsc2, ref1, ref2);
  else
   tsc2 = calc_pmtimer_ref(tsc2, ref1, ref2);

  tsc_ref_min = min(tsc_ref_min, (unsigned long) tsc2);


  delta = ((u64) tsc_pit_min) * 100;
  do_div(delta, tsc_ref_min);







  if (delta >= 90 && delta <= 110) {
   pr_info("PIT calibration matches %s. %d loops\n",
    hpet ? "HPET" : "PMTIMER", i + 1);
   return tsc_ref_min;
  }







  if (i == 1 && tsc_pit_min == ULONG_MAX) {
   latch = CAL2_LATCH;
   ms = CAL2_MS;
   loopmin = CAL2_PIT_LOOPS;
  }
 }




 if (tsc_pit_min == ULONG_MAX) {

  pr_warn("Unable to calibrate against PIT\n");


  if (!hpet && !ref1 && !ref2) {
   pr_notice("No reference (HPET/PMTIMER) available\n");
   return 0;
  }


  if (tsc_ref_min == ULONG_MAX) {
   pr_warn("HPET/PMTIMER calibration failed\n");
   return 0;
  }


  pr_info("using %s reference calibration\n",
   hpet ? "HPET" : "PMTIMER");

  return tsc_ref_min;
 }


 if (!hpet && !ref1 && !ref2) {
  pr_info("Using PIT calibration value\n");
  return tsc_pit_min;
 }


 if (tsc_ref_min == ULONG_MAX) {
  pr_warn("HPET/PMTIMER calibration failed. Using PIT calibration.\n");
  return tsc_pit_min;
 }






 pr_warn("PIT calibration deviates from %s: %lu %lu\n",
  hpet ? "HPET" : "PMTIMER", tsc_pit_min, tsc_ref_min);
 pr_info("Using PIT calibration value\n");
 return tsc_pit_min;
}
