
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_special_mapping {int dummy; } ;
struct vm_fault {unsigned long pgoff; struct page* page; } ;
struct vm_area_struct {TYPE_2__* vm_mm; } ;
struct page {int dummy; } ;
struct TYPE_3__ {scalar_t__ compat_mm; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page** vdso32_pagelist ;
 unsigned long vdso32_pages ;
 struct page** vdso64_pagelist ;
 unsigned long vdso64_pages ;

__attribute__((used)) static vm_fault_t vdso_fault(const struct vm_special_mapping *sm,
        struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page **vdso_pagelist;
 unsigned long vdso_pages;

 vdso_pagelist = vdso64_pagelist;
 vdso_pages = vdso64_pages;







 if (vmf->pgoff >= vdso_pages)
  return VM_FAULT_SIGBUS;

 vmf->page = vdso_pagelist[vmf->pgoff];
 get_page(vmf->page);
 return 0;
}
