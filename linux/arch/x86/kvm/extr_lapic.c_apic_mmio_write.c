
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_lapic {unsigned int base_address; } ;
struct kvm_io_device {int dummy; } ;
typedef unsigned int gpa_t ;


 int EOPNOTSUPP ;
 int KVM_X86_QUIRK_LAPIC_MMIO_HOLE ;
 int apic_mmio_in_range (struct kvm_lapic*,unsigned int) ;
 scalar_t__ apic_x2apic_mode (struct kvm_lapic*) ;
 int kvm_apic_hw_enabled (struct kvm_lapic*) ;
 int kvm_check_has_quirk (int ,int ) ;
 int kvm_lapic_reg_write (struct kvm_lapic*,unsigned int,int ) ;
 struct kvm_lapic* to_lapic (struct kvm_io_device*) ;

__attribute__((used)) static int apic_mmio_write(struct kvm_vcpu *vcpu, struct kvm_io_device *this,
       gpa_t address, int len, const void *data)
{
 struct kvm_lapic *apic = to_lapic(this);
 unsigned int offset = address - apic->base_address;
 u32 val;

 if (!apic_mmio_in_range(apic, address))
  return -EOPNOTSUPP;

 if (!kvm_apic_hw_enabled(apic) || apic_x2apic_mode(apic)) {
  if (!kvm_check_has_quirk(vcpu->kvm,
      KVM_X86_QUIRK_LAPIC_MMIO_HOLE))
   return -EOPNOTSUPP;

  return 0;
 }






 if (len != 4 || (offset & 0xf))
  return 0;

 val = *(u32*)data;

 kvm_lapic_reg_write(apic, offset & 0xff0, val);

 return 0;
}
