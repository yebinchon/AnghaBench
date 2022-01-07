
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmcs12 {scalar_t__ msr_bitmap; } ;
struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int CPU_BASED_USE_MSR_BITMAPS ;
 scalar_t__ EXIT_REASON_MSR_WRITE ;
 scalar_t__ kvm_rcx_read (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_read_guest (struct kvm_vcpu*,scalar_t__,unsigned char*,int) ;
 int nested_cpu_has (struct vmcs12*,int ) ;

__attribute__((used)) static bool nested_vmx_exit_handled_msr(struct kvm_vcpu *vcpu,
 struct vmcs12 *vmcs12, u32 exit_reason)
{
 u32 msr_index = kvm_rcx_read(vcpu);
 gpa_t bitmap;

 if (!nested_cpu_has(vmcs12, CPU_BASED_USE_MSR_BITMAPS))
  return 1;






 bitmap = vmcs12->msr_bitmap;
 if (exit_reason == EXIT_REASON_MSR_WRITE)
  bitmap += 2048;
 if (msr_index >= 0xc0000000) {
  msr_index -= 0xc0000000;
  bitmap += 1024;
 }


 if (msr_index < 1024*8) {
  unsigned char b;
  if (kvm_vcpu_read_guest(vcpu, bitmap + msr_index/8, &b, 1))
   return 1;
  return 1 & (b >> (msr_index & 7));
 } else
  return 1;
}
