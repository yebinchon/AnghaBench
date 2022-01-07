
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_mapping_info {int offset; int page_flag; int alloc_pgt_page; } ;
typedef int pgd_t ;
struct TYPE_2__ {unsigned long start; unsigned long end; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long PAGE_SHIFT ;
 int __PAGE_KERNEL_LARGE_EXEC ;
 int __PAGE_OFFSET ;
 int __pa (int *) ;
 int alloc_pgt_page ;
 scalar_t__ get_safe_page (int ) ;
 int kernel_ident_mapping_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;
 int nr_pfn_mapped ;
 TYPE_1__* pfn_mapped ;
 int set_up_temporary_text_mapping (int *) ;
 int temp_pgt ;

__attribute__((used)) static int set_up_temporary_mappings(void)
{
 struct x86_mapping_info info = {
  .alloc_pgt_page = alloc_pgt_page,
  .page_flag = __PAGE_KERNEL_LARGE_EXEC,
  .offset = __PAGE_OFFSET,
 };
 unsigned long mstart, mend;
 pgd_t *pgd;
 int result;
 int i;

 pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
 if (!pgd)
  return -ENOMEM;


 result = set_up_temporary_text_mapping(pgd);
 if (result)
  return result;


 for (i = 0; i < nr_pfn_mapped; i++) {
  mstart = pfn_mapped[i].start << PAGE_SHIFT;
  mend = pfn_mapped[i].end << PAGE_SHIFT;

  result = kernel_ident_mapping_init(&info, pgd, mstart, mend);
  if (result)
   return result;
 }

 temp_pgt = __pa(pgd);
 return 0;
}
