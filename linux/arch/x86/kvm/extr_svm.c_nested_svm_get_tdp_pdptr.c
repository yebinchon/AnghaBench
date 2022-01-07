
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int nested_cr3; } ;
struct vcpu_svm {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int __sme_clr (int ) ;
 int gpa_to_gfn (int ) ;
 int kvm_vcpu_read_guest_page (struct kvm_vcpu*,int ,int *,scalar_t__,int) ;
 scalar_t__ offset_in_page (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static u64 nested_svm_get_tdp_pdptr(struct kvm_vcpu *vcpu, int index)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u64 cr3 = svm->nested.nested_cr3;
 u64 pdpte;
 int ret;

 ret = kvm_vcpu_read_guest_page(vcpu, gpa_to_gfn(__sme_clr(cr3)), &pdpte,
           offset_in_page(cr3) + index * 8, 8);
 if (ret)
  return 0;
 return pdpte;
}
