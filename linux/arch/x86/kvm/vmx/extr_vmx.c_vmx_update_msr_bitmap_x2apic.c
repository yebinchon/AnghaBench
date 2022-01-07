
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APIC_EOI ;
 int APIC_SELF_IPI ;
 int APIC_TASKPRI ;
 int APIC_TMCCT ;
 int BITS_PER_LONG ;
 int MSR_BITMAP_MODE_X2APIC ;
 int MSR_BITMAP_MODE_X2APIC_APICV ;
 int MSR_TYPE_R ;
 int MSR_TYPE_RW ;
 int MSR_TYPE_W ;
 int X2APIC_MSR (int ) ;
 int vmx_disable_intercept_for_msr (unsigned long*,int ,int ) ;
 int vmx_enable_intercept_for_msr (unsigned long*,int ,int ) ;

__attribute__((used)) static void vmx_update_msr_bitmap_x2apic(unsigned long *msr_bitmap,
      u8 mode)
{
 int msr;

 for (msr = 0x800; msr <= 0x8ff; msr += BITS_PER_LONG) {
  unsigned word = msr / BITS_PER_LONG;
  msr_bitmap[word] = (mode & MSR_BITMAP_MODE_X2APIC_APICV) ? 0 : ~0;
  msr_bitmap[word + (0x800 / sizeof(long))] = ~0;
 }

 if (mode & MSR_BITMAP_MODE_X2APIC) {




  vmx_disable_intercept_for_msr(msr_bitmap, X2APIC_MSR(APIC_TASKPRI), MSR_TYPE_RW);
  if (mode & MSR_BITMAP_MODE_X2APIC_APICV) {
   vmx_enable_intercept_for_msr(msr_bitmap, X2APIC_MSR(APIC_TMCCT), MSR_TYPE_R);
   vmx_disable_intercept_for_msr(msr_bitmap, X2APIC_MSR(APIC_EOI), MSR_TYPE_W);
   vmx_disable_intercept_for_msr(msr_bitmap, X2APIC_MSR(APIC_SELF_IPI), MSR_TYPE_W);
  }
 }
}
