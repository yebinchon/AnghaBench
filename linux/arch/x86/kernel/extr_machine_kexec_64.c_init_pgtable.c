
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_mapping_info {int direct_gbpages; int kernpg_flag; int page_flag; struct kimage* context; int alloc_pgt_page; } ;
struct kimage {int nr_segments; TYPE_1__* segment; } ;
typedef int pgd_t ;
struct TYPE_4__ {unsigned long start; unsigned long end; } ;
struct TYPE_3__ {unsigned long mem; unsigned long memsz; } ;


 unsigned long PAGE_SHIFT ;
 int _KERNPG_TABLE_NOENC ;
 int _PAGE_ENC ;
 int __PAGE_KERNEL_LARGE_EXEC ;
 scalar_t__ __va (unsigned long) ;
 int alloc_pgt_page ;
 int clear_page (int *) ;
 scalar_t__ direct_gbpages ;
 int init_transition_pgtable (struct kimage*,int *) ;
 int kernel_ident_mapping_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;
 int map_acpi_tables (struct x86_mapping_info*,int *) ;
 int map_efi_systab (struct x86_mapping_info*,int *) ;
 int nr_pfn_mapped ;
 TYPE_2__* pfn_mapped ;
 scalar_t__ sev_active () ;

__attribute__((used)) static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
{
 struct x86_mapping_info info = {
  .alloc_pgt_page = alloc_pgt_page,
  .context = image,
  .page_flag = __PAGE_KERNEL_LARGE_EXEC,
  .kernpg_flag = _KERNPG_TABLE_NOENC,
 };
 unsigned long mstart, mend;
 pgd_t *level4p;
 int result;
 int i;

 level4p = (pgd_t *)__va(start_pgtable);
 clear_page(level4p);

 if (sev_active()) {
  info.page_flag |= _PAGE_ENC;
  info.kernpg_flag |= _PAGE_ENC;
 }

 if (direct_gbpages)
  info.direct_gbpages = 1;

 for (i = 0; i < nr_pfn_mapped; i++) {
  mstart = pfn_mapped[i].start << PAGE_SHIFT;
  mend = pfn_mapped[i].end << PAGE_SHIFT;

  result = kernel_ident_mapping_init(&info,
       level4p, mstart, mend);
  if (result)
   return result;
 }







 for (i = 0; i < image->nr_segments; i++) {
  mstart = image->segment[i].mem;
  mend = mstart + image->segment[i].memsz;

  result = kernel_ident_mapping_init(&info,
       level4p, mstart, mend);

  if (result)
   return result;
 }





 result = map_efi_systab(&info, level4p);
 if (result)
  return result;

 result = map_acpi_tables(&info, level4p);
 if (result)
  return result;

 return init_transition_pgtable(image, level4p);
}
