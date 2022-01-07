
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsie_page {scalar_t__ fault_addr; int gmap; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_s390_shadow_fault (struct kvm_vcpu*,int ,scalar_t__) ;

__attribute__((used)) static void handle_last_fault(struct kvm_vcpu *vcpu,
         struct vsie_page *vsie_page)
{
 if (vsie_page->fault_addr)
  kvm_s390_shadow_fault(vcpu, vsie_page->gmap,
          vsie_page->fault_addr);
 vsie_page->fault_addr = 0;
}
