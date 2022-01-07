
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {scalar_t__ nv; scalar_t__ control; unsigned int ndst; scalar_t__ sn; } ;
struct kvm_vcpu {int cpu; } ;


 scalar_t__ POSTED_INTR_WAKEUP_VECTOR ;
 scalar_t__ cmpxchg64 (scalar_t__*,scalar_t__,scalar_t__) ;
 unsigned int cpu_physical_id (int) ;
 int pi_clear_sn (struct pi_desc*) ;
 int pi_is_pir_empty (struct pi_desc*) ;
 int pi_set_on (struct pi_desc*) ;
 int pi_test_sn (struct pi_desc*) ;
 int smp_mb__after_atomic () ;
 struct pi_desc* vcpu_to_pi_desc (struct kvm_vcpu*) ;
 scalar_t__ x2apic_enabled () ;

__attribute__((used)) static void vmx_vcpu_pi_load(struct kvm_vcpu *vcpu, int cpu)
{
 struct pi_desc *pi_desc = vcpu_to_pi_desc(vcpu);
 struct pi_desc old, new;
 unsigned int dest;







 if (!pi_test_sn(pi_desc) && vcpu->cpu == cpu)
  return;
 if (pi_desc->nv == POSTED_INTR_WAKEUP_VECTOR || vcpu->cpu == cpu) {
  pi_clear_sn(pi_desc);
  goto after_clear_sn;
 }


 do {
  old.control = new.control = pi_desc->control;

  dest = cpu_physical_id(cpu);

  if (x2apic_enabled())
   new.ndst = dest;
  else
   new.ndst = (dest << 8) & 0xFF00;

  new.sn = 0;
 } while (cmpxchg64(&pi_desc->control, old.control,
      new.control) != old.control);

after_clear_sn:







 smp_mb__after_atomic();

 if (!pi_is_pir_empty(pi_desc))
  pi_set_on(pi_desc);
}
