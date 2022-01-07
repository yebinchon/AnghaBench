
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int HV_X64_MSR_GUEST_IDLE ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 scalar_t__ in_nmi () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rdmsrl (int ,unsigned long) ;

__attribute__((used)) static void hv_qlock_wait(u8 *byte, u8 val)
{
 unsigned long msr_val;
 unsigned long flags;

 if (in_nmi())
  return;
 local_irq_save(flags);



 if (READ_ONCE(*byte) == val)
  rdmsrl(HV_X64_MSR_GUEST_IDLE, msr_val);
 local_irq_restore(flags);
}
