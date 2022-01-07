
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int hpa_t ;
typedef int gpa_t ;


 int PAGE_SHIFT ;
 int gpa_to_gfn (int ) ;
 int kvm_release_pfn_dirty (int) ;
 int mark_page_dirty (struct kvm*,int ) ;

__attribute__((used)) static void unpin_guest_page(struct kvm *kvm, gpa_t gpa, hpa_t hpa)
{
 kvm_release_pfn_dirty(hpa >> PAGE_SHIFT);

 mark_page_dirty(kvm, gpa_to_gfn(gpa));
}
