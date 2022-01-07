
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p7_sprs {void* wort; void* dscr; void* spurr; void* purr; void* fscr; void* hfscr; void* lpcr; void* rpr; void* sdr1; void* worc; void* tscr; void* uamor; void* amor; void* iamr; void* amr; } ;
struct TYPE_4__ {unsigned long thread_idle_state; unsigned long subcore_sibling_mask; void* sprg_vdso; } ;
struct TYPE_3__ {unsigned long idle_state; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int CPU_FTR_ARCH_207S ;
 int MSR_DR ;
 int MSR_IR ;
 int OPAL_CONFIG_IDLE_APPLY ;
 int OPAL_CONFIG_IDLE_FASTSLEEP ;
 int OPAL_CONFIG_IDLE_UNDO ;
 scalar_t__ OPAL_SUCCESS ;
 unsigned long PNV_CORE_IDLE_THREAD_WINKLE_BITS ;
 unsigned long PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT ;
 unsigned long PNV_CORE_IDLE_WINKLE_COUNT_BITS ;
 int PNV_CORE_IDLE_WINKLE_COUNT_SHIFT ;
 unsigned long PNV_THREAD_NAP ;
 unsigned long PNV_THREAD_RUNNING ;
 unsigned long PNV_THREAD_WINKLE ;
 int SPRN_AMOR ;
 int SPRN_AMR ;
 int SPRN_DSCR ;
 int SPRN_FSCR ;
 int SPRN_HFSCR ;
 int SPRN_IAMR ;
 int SPRN_LPCR ;
 int SPRN_PURR ;
 int SPRN_RPR ;
 int SPRN_SDR1 ;
 int SPRN_SPRG3 ;
 int SPRN_SPURR ;
 int SPRN_TSCR ;
 int SPRN_UAMOR ;
 int SPRN_WORC ;
 int SPRN_WORT ;
 unsigned long SRR1_WAKEHMI ;
 unsigned long SRR1_WAKEMASK_P8 ;
 unsigned long SRR1_WAKESTATE ;
 unsigned long SRR1_WS_HVLOSS ;
 unsigned long SRR1_WS_NOLOSS ;
 int WARN_ON (unsigned long) ;
 int WARN_ON_ONCE (int) ;
 int __slb_restore_bolted_realmode () ;
 int atomic_lock_thread_idle () ;
 int atomic_unlock_and_stop_thread_idle () ;
 int atomic_unlock_thread_idle () ;
 int cpu_first_thread_sibling (int) ;
 scalar_t__ cpu_has_feature (int ) ;
 unsigned long cpu_thread_in_core (int) ;
 int hmi_exception_realmode (int *) ;
 unsigned long isa206_idle_insn_mayloss (unsigned long) ;
 int isync () ;
 scalar_t__ likely (int) ;
 TYPE_2__* local_paca ;
 int mfmsr () ;
 void* mfspr (int ) ;
 int mtspr (int ,void*) ;
 int opal_config_cpu_idle_state (int ,int ) ;
 scalar_t__ opal_resync_timebase () ;
 TYPE_1__** paca_ptrs ;
 scalar_t__ power7_fastsleep_workaround_entry ;
 scalar_t__ power7_fastsleep_workaround_exit ;
 int raw_smp_processor_id () ;
 unsigned long threads_per_core ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long power7_idle_insn(unsigned long type)
{
 int cpu = raw_smp_processor_id();
 int first = cpu_first_thread_sibling(cpu);
 unsigned long *state = &paca_ptrs[first]->idle_state;
 unsigned long thread = 1UL << cpu_thread_in_core(cpu);
 unsigned long core_thread_mask = (1UL << threads_per_core) - 1;
 unsigned long srr1;
 bool full_winkle;
 struct p7_sprs sprs = {};
 bool sprs_saved = 0;
 int rc;

 if (unlikely(type != PNV_THREAD_NAP)) {
  atomic_lock_thread_idle();

  BUG_ON(!(*state & thread));
  *state &= ~thread;

  if (power7_fastsleep_workaround_entry) {
   if ((*state & core_thread_mask) == 0) {
    rc = opal_config_cpu_idle_state(
      OPAL_CONFIG_IDLE_FASTSLEEP,
      OPAL_CONFIG_IDLE_APPLY);
    BUG_ON(rc);
   }
  }

  if (type == PNV_THREAD_WINKLE) {
   sprs.tscr = mfspr(SPRN_TSCR);
   sprs.worc = mfspr(SPRN_WORC);

   sprs.sdr1 = mfspr(SPRN_SDR1);
   sprs.rpr = mfspr(SPRN_RPR);

   sprs.lpcr = mfspr(SPRN_LPCR);
   if (cpu_has_feature(CPU_FTR_ARCH_207S)) {
    sprs.hfscr = mfspr(SPRN_HFSCR);
    sprs.fscr = mfspr(SPRN_FSCR);
   }
   sprs.purr = mfspr(SPRN_PURR);
   sprs.spurr = mfspr(SPRN_SPURR);
   sprs.dscr = mfspr(SPRN_DSCR);
   sprs.wort = mfspr(SPRN_WORT);

   sprs_saved = 1;
   *state += 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
   if ((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS)
     >> PNV_CORE_IDLE_WINKLE_COUNT_SHIFT
     == threads_per_core)
    *state |= PNV_CORE_IDLE_THREAD_WINKLE_BITS;
   WARN_ON((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
  }

  atomic_unlock_thread_idle();
 }

 if (cpu_has_feature(CPU_FTR_ARCH_207S)) {
  sprs.amr = mfspr(SPRN_AMR);
  sprs.iamr = mfspr(SPRN_IAMR);
  sprs.amor = mfspr(SPRN_AMOR);
  sprs.uamor = mfspr(SPRN_UAMOR);
 }

 local_paca->thread_idle_state = type;
 srr1 = isa206_idle_insn_mayloss(type);
 local_paca->thread_idle_state = PNV_THREAD_RUNNING;

 WARN_ON_ONCE(!srr1);
 WARN_ON_ONCE(mfmsr() & (MSR_IR|MSR_DR));

 if (cpu_has_feature(CPU_FTR_ARCH_207S)) {
  if ((srr1 & SRR1_WAKESTATE) != SRR1_WS_NOLOSS) {




   mtspr(SPRN_AMR, sprs.amr);
   mtspr(SPRN_IAMR, sprs.iamr);
   mtspr(SPRN_AMOR, sprs.amor);
   mtspr(SPRN_UAMOR, sprs.uamor);
  }
 }

 if (unlikely((srr1 & SRR1_WAKEMASK_P8) == SRR1_WAKEHMI))
  hmi_exception_realmode(((void*)0));

 if (likely((srr1 & SRR1_WAKESTATE) != SRR1_WS_HVLOSS)) {
  if (unlikely(type != PNV_THREAD_NAP)) {
   atomic_lock_thread_idle();
   if (type == PNV_THREAD_WINKLE) {
    WARN_ON((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
    *state -= 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
    *state &= ~(thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT);
   }
   atomic_unlock_and_stop_thread_idle();
  }
  return srr1;
 }


 BUG_ON(type == PNV_THREAD_NAP);

 atomic_lock_thread_idle();

 full_winkle = 0;
 if (type == PNV_THREAD_WINKLE) {
  WARN_ON((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
  *state -= 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
  if (*state & (thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT)) {
   *state &= ~(thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT);
   full_winkle = 1;
   BUG_ON(!sprs_saved);
  }
 }

 WARN_ON(*state & thread);

 if ((*state & core_thread_mask) != 0)
  goto core_woken;


 if (full_winkle) {
  mtspr(SPRN_TSCR, sprs.tscr);
  mtspr(SPRN_WORC, sprs.worc);
 }

 if (power7_fastsleep_workaround_exit) {
  rc = opal_config_cpu_idle_state(OPAL_CONFIG_IDLE_FASTSLEEP,
      OPAL_CONFIG_IDLE_UNDO);
  BUG_ON(rc);
 }


 if (opal_resync_timebase() != OPAL_SUCCESS)
  BUG();

core_woken:
 if (!full_winkle)
  goto subcore_woken;

 if ((*state & local_paca->subcore_sibling_mask) != 0)
  goto subcore_woken;


 mtspr(SPRN_SDR1, sprs.sdr1);
 mtspr(SPRN_RPR, sprs.rpr);

subcore_woken:





 isync();
 atomic_unlock_and_stop_thread_idle();


 if (!full_winkle)
  return srr1;


 mtspr(SPRN_LPCR, sprs.lpcr);
 if (cpu_has_feature(CPU_FTR_ARCH_207S)) {
  mtspr(SPRN_HFSCR, sprs.hfscr);
  mtspr(SPRN_FSCR, sprs.fscr);
 }
 mtspr(SPRN_PURR, sprs.purr);
 mtspr(SPRN_SPURR, sprs.spurr);
 mtspr(SPRN_DSCR, sprs.dscr);
 mtspr(SPRN_WORT, sprs.wort);

 mtspr(SPRN_SPRG3, local_paca->sprg_vdso);






 __slb_restore_bolted_realmode();

 return srr1;
}
