
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {int (* set_apic_access_page_addr ) (struct kvm_vcpu*,int ) ;} ;


 int APIC_DEFAULT_PHYS_BASE ;
 int PAGE_SHIFT ;
 struct page* gfn_to_page (int ,int) ;
 scalar_t__ is_error_page (struct page*) ;
 TYPE_1__* kvm_x86_ops ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int page_to_phys (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (struct kvm_vcpu*,int ) ;

void kvm_vcpu_reload_apic_access_page(struct kvm_vcpu *vcpu)
{
 struct page *page = ((void*)0);

 if (!lapic_in_kernel(vcpu))
  return;

 if (!kvm_x86_ops->set_apic_access_page_addr)
  return;

 page = gfn_to_page(vcpu->kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
 if (is_error_page(page))
  return;
 kvm_x86_ops->set_apic_access_page_addr(vcpu, page_to_phys(page));





 put_page(page);
}
