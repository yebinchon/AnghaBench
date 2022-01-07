
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ DO_TRACE ;
 unsigned long MSR_DR ;
 unsigned long MSR_EE ;
 unsigned long MSR_IR ;
 int __opal_call (int ,int ,int ,int ,int ,int ,int ,int ,int ,unsigned long) ;
 int __opal_call_trace (int ,int ,int ,int ,int ,int ,int ,int ,int ,unsigned long) ;
 int hard_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 unsigned long mfmsr () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int64_t opal_call(int64_t a0, int64_t a1, int64_t a2, int64_t a3,
      int64_t a4, int64_t a5, int64_t a6, int64_t a7, int64_t opcode)
{
 unsigned long flags;
 unsigned long msr = mfmsr();
 bool mmu = (msr & (MSR_IR|MSR_DR));
 int64_t ret;

 msr &= ~MSR_EE;

 if (unlikely(!mmu))
  return __opal_call(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);

 local_save_flags(flags);
 hard_irq_disable();

 if (DO_TRACE) {
  ret = __opal_call_trace(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);
 } else {
  ret = __opal_call(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);
 }

 local_irq_restore(flags);

 return ret;
}
