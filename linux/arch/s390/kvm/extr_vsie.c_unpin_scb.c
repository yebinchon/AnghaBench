
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsie_page {int * scb_o; } ;
struct kvm_vcpu {int kvm; } ;
typedef scalar_t__ hpa_t ;
typedef int gpa_t ;


 int unpin_guest_page (int ,int ,scalar_t__) ;

__attribute__((used)) static void unpin_scb(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page,
        gpa_t gpa)
{
 hpa_t hpa = (hpa_t) vsie_page->scb_o;

 if (hpa)
  unpin_guest_page(vcpu->kvm, gpa, hpa);
 vsie_page->scb_o = ((void*)0);
}
