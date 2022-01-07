
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ hpa_t ;
typedef int gpa_t ;


 int EINVAL ;
 int PAGE_MASK ;
 struct page* gfn_to_page (struct kvm*,int ) ;
 int gpa_to_gfn (int) ;
 scalar_t__ is_error_page (struct page*) ;
 scalar_t__ page_to_virt (struct page*) ;

__attribute__((used)) static int pin_guest_page(struct kvm *kvm, gpa_t gpa, hpa_t *hpa)
{
 struct page *page;

 page = gfn_to_page(kvm, gpa_to_gfn(gpa));
 if (is_error_page(page))
  return -EINVAL;
 *hpa = (hpa_t) page_to_virt(page) + (gpa & ~PAGE_MASK);
 return 0;
}
