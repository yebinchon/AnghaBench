
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {scalar_t__ (* translate_gpa ) (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;} ;
typedef int gpa_t ;
typedef scalar_t__ gfn_t ;


 int EFAULT ;
 scalar_t__ UNMAPPED_GVA ;
 int gfn_to_gpa (scalar_t__) ;
 scalar_t__ gpa_to_gfn (scalar_t__) ;
 int kvm_vcpu_read_guest_page (struct kvm_vcpu*,scalar_t__,void*,int,int) ;
 scalar_t__ stub1 (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;

int kvm_read_guest_page_mmu(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu,
       gfn_t ngfn, void *data, int offset, int len,
       u32 access)
{
 struct x86_exception exception;
 gfn_t real_gfn;
 gpa_t ngpa;

 ngpa = gfn_to_gpa(ngfn);
 real_gfn = mmu->translate_gpa(vcpu, ngpa, access, &exception);
 if (real_gfn == UNMAPPED_GVA)
  return -EFAULT;

 real_gfn = gpa_to_gfn(real_gfn);

 return kvm_vcpu_read_guest_page(vcpu, real_gfn, data, offset, len);
}
