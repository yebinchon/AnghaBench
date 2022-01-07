
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef long s32 ;


 scalar_t__ cpu_guest_has_segments ;
 scalar_t__ is_eva_am_mapped (struct kvm_vcpu*,unsigned long,unsigned long) ;
 int kvm_vz_guest_tlb_lookup (struct kvm_vcpu*,unsigned long,unsigned long*) ;
 int read_gc0_segctl0 () ;
 int read_gc0_segctl1 () ;
 int read_gc0_segctl2 () ;
 int unreachable () ;

__attribute__((used)) static int kvm_vz_gva_to_gpa(struct kvm_vcpu *vcpu, unsigned long gva,
        unsigned long *gpa)
{
 u32 gva32 = gva;
 unsigned long segctl;

 if ((long)gva == (s32)gva32) {

  if (cpu_guest_has_segments) {
   unsigned long mask, pa;

   switch (gva32 >> 29) {
   case 0:
   case 1:
    segctl = read_gc0_segctl2() >> 16;
    mask = (unsigned long)0xfc0000000ull;
    break;
   case 2:
   case 3:
    segctl = read_gc0_segctl2();
    mask = (unsigned long)0xfc0000000ull;
    break;
   case 4:
    segctl = read_gc0_segctl1() >> 16;
    mask = (unsigned long)0xfe0000000ull;
    break;
   case 5:
    segctl = read_gc0_segctl1();
    mask = (unsigned long)0xfe0000000ull;
    break;
   case 6:
    segctl = read_gc0_segctl0() >> 16;
    mask = (unsigned long)0xfe0000000ull;
    break;
   case 7:
    segctl = read_gc0_segctl0();
    mask = (unsigned long)0xfe0000000ull;
    break;
   default:




    unreachable();
   }

   if (is_eva_am_mapped(vcpu, (segctl >> 4) & 0x7,
          segctl & 0x0008))
    goto tlb_mapped;


   pa = (segctl << 20) & mask;
   pa |= gva32 & ~mask;
   *gpa = pa;
   return 0;
  } else if ((s32)gva32 < (s32)0xc0000000) {

   *gpa = gva32 & 0x1fffffff;
   return 0;
  }
 }

tlb_mapped:
 return kvm_vz_guest_tlb_lookup(vcpu, gva, gpa);
}
