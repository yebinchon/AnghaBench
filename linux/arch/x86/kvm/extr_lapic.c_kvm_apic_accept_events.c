
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ mp_state; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {unsigned long pending_events; int sipi_vector; int vcpu; } ;
struct TYPE_4__ {scalar_t__ (* apic_init_signal_blocked ) (struct kvm_vcpu*) ;} ;


 int KVM_APIC_INIT ;
 int KVM_APIC_SIPI ;
 scalar_t__ KVM_MP_STATE_INIT_RECEIVED ;
 void* KVM_MP_STATE_RUNNABLE ;
 int WARN_ON_ONCE (int) ;
 int clear_bit (int ,unsigned long*) ;
 scalar_t__ is_smm (struct kvm_vcpu*) ;
 int kvm_vcpu_deliver_sipi_vector (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_vcpu_is_bsp (int ) ;
 int kvm_vcpu_reset (struct kvm_vcpu*,int) ;
 TYPE_2__* kvm_x86_ops ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int smp_rmb () ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 unsigned long xchg (unsigned long*,int ) ;

void kvm_apic_accept_events(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u8 sipi_vector;
 unsigned long pe;

 if (!lapic_in_kernel(vcpu) || !apic->pending_events)
  return;
 if (is_smm(vcpu) || kvm_x86_ops->apic_init_signal_blocked(vcpu)) {
  WARN_ON_ONCE(vcpu->arch.mp_state == KVM_MP_STATE_INIT_RECEIVED);
  if (test_bit(KVM_APIC_SIPI, &apic->pending_events))
   clear_bit(KVM_APIC_SIPI, &apic->pending_events);
  return;
 }

 pe = xchg(&apic->pending_events, 0);
 if (test_bit(KVM_APIC_INIT, &pe)) {
  kvm_vcpu_reset(vcpu, 1);
  if (kvm_vcpu_is_bsp(apic->vcpu))
   vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
  else
   vcpu->arch.mp_state = KVM_MP_STATE_INIT_RECEIVED;
 }
 if (test_bit(KVM_APIC_SIPI, &pe) &&
     vcpu->arch.mp_state == KVM_MP_STATE_INIT_RECEIVED) {

  smp_rmb();
  sipi_vector = apic->sipi_vector;
  kvm_vcpu_deliver_sipi_vector(vcpu, sipi_vector);
  vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
 }
}
