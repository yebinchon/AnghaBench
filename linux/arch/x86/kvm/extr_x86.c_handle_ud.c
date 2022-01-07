
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int sig ;


 int EMULTYPE_TRAP_UD ;
 int EMULTYPE_TRAP_UD_FORCED ;
 scalar_t__ force_emulation_prefix ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int) ;
 int kvm_get_linear_rip (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_guest_virt (struct kvm_vcpu*,int ,char*,int,struct x86_exception*) ;
 scalar_t__ kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_rip_write (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ memcmp (char*,char*,int) ;

int handle_ud(struct kvm_vcpu *vcpu)
{
 int emul_type = EMULTYPE_TRAP_UD;
 char sig[5];
 struct x86_exception e;

 if (force_emulation_prefix &&
     kvm_read_guest_virt(vcpu, kvm_get_linear_rip(vcpu),
    sig, sizeof(sig), &e) == 0 &&
     memcmp(sig, "\xf\xbkvm", sizeof(sig)) == 0) {
  kvm_rip_write(vcpu, kvm_rip_read(vcpu) + sizeof(sig));
  emul_type = EMULTYPE_TRAP_UD_FORCED;
 }

 return kvm_emulate_instruction(vcpu, emul_type);
}
