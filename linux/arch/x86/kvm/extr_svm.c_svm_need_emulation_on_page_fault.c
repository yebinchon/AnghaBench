
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int KVM_REQ_TRIPLE_FAULT ;
 unsigned long X86_CR4_SMAP ;
 unsigned long X86_CR4_SMEP ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 unsigned long kvm_read_cr4 (struct kvm_vcpu*) ;
 int pr_err_ratelimited (char*) ;
 int sev_guest (int ) ;
 int svm_get_cpl (struct kvm_vcpu*) ;

__attribute__((used)) static bool svm_need_emulation_on_page_fault(struct kvm_vcpu *vcpu)
{
 unsigned long cr4 = kvm_read_cr4(vcpu);
 bool smep = cr4 & X86_CR4_SMEP;
 bool smap = cr4 & X86_CR4_SMAP;
 bool is_user = svm_get_cpl(vcpu) == 3;
 if (smap && (!smep || is_user)) {
  if (!sev_guest(vcpu->kvm))
   return 1;

  pr_err_ratelimited("KVM: SEV Guest triggered AMD Erratum 1096\n");
  kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
 }

 return 0;
}
