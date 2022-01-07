
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_pfn_t ;
struct vm_area_struct {int vm_flags; int vm_mm; } ;
struct remap_data {int contiguous; int no_translate; struct mmu_update* mmu_update; int prot; int * pfn; } ;
struct page {int dummy; } ;
struct mmu_update {int dummy; } ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int HYPERVISOR_mmu_update (struct mmu_update*,int,int*,unsigned int) ;
 unsigned long PAGE_SHIFT ;
 int REMAP_BATCH_SIZE ;
 int VM_IO ;
 int VM_PFNMAP ;
 int apply_to_page_range (int ,unsigned long,unsigned long,int ,struct remap_data*) ;
 int cond_resched () ;
 int min (int,int) ;
 int remap_area_pfn_pte_fn ;
 int xen_flush_tlb_all () ;

int xen_remap_pfn(struct vm_area_struct *vma, unsigned long addr,
    xen_pfn_t *pfn, int nr, int *err_ptr, pgprot_t prot,
    unsigned int domid, bool no_translate, struct page **pages)
{
 int err = 0;
 struct remap_data rmd;
 struct mmu_update mmu_update[REMAP_BATCH_SIZE];
 unsigned long range;
 int mapped = 0;

 BUG_ON(!((vma->vm_flags & (VM_PFNMAP | VM_IO)) == (VM_PFNMAP | VM_IO)));

 rmd.pfn = pfn;
 rmd.prot = prot;




 rmd.contiguous = !err_ptr;
 rmd.no_translate = no_translate;

 while (nr) {
  int index = 0;
  int done = 0;
  int batch = min(REMAP_BATCH_SIZE, nr);
  int batch_left = batch;

  range = (unsigned long)batch << PAGE_SHIFT;

  rmd.mmu_update = mmu_update;
  err = apply_to_page_range(vma->vm_mm, addr, range,
       remap_area_pfn_pte_fn, &rmd);
  if (err)
   goto out;





  do {
   int i;

   err = HYPERVISOR_mmu_update(&mmu_update[index],
          batch_left, &done, domid);






   if (err_ptr) {
    for (i = index; i < index + done; i++)
     err_ptr[i] = 0;
   }
   if (err < 0) {
    if (!err_ptr)
     goto out;
    err_ptr[i] = err;
    done++;
   } else
    mapped += done;
   batch_left -= done;
   index += done;
  } while (batch_left);

  nr -= batch;
  addr += range;
  if (err_ptr)
   err_ptr += batch;
  cond_resched();
 }
out:

 xen_flush_tlb_all();

 return err < 0 ? err : mapped;
}
