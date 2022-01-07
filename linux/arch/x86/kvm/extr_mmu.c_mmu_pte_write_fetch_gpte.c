
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 scalar_t__ is_pae (struct kvm_vcpu*) ;
 int kvm_vcpu_read_guest_atomic (struct kvm_vcpu*,int ,scalar_t__*,int) ;

__attribute__((used)) static u64 mmu_pte_write_fetch_gpte(struct kvm_vcpu *vcpu, gpa_t *gpa,
        int *bytes)
{
 u64 gentry = 0;
 int r;






 if (is_pae(vcpu) && *bytes == 4) {

  *gpa &= ~(gpa_t)7;
  *bytes = 8;
 }

 if (*bytes == 4 || *bytes == 8) {
  r = kvm_vcpu_read_guest_atomic(vcpu, *gpa, &gentry, *bytes);
  if (r)
   gentry = 0;
 }

 return gentry;
}
