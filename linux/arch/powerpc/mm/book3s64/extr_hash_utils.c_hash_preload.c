
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; int * pgd; } ;
typedef int pte_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int DBG_LOW (char*,struct mm_struct*,int *,unsigned long,unsigned long,unsigned long) ;
 int HPTE_LOCAL_UPDATE ;
 int H_PAGE_4K_PFN ;
 scalar_t__ MMU_PAGE_64K ;
 scalar_t__ USER_REGION_ID ;
 int WARN_ON (int) ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_READ ;
 int __hash_page_4K (unsigned long,unsigned long,unsigned long,int *,unsigned long,int,int,int ) ;
 int __hash_page_64K (unsigned long,unsigned long,unsigned long,int *,unsigned long,int,int) ;
 int * find_current_mm_pte (int *,unsigned long,int *,int*) ;
 scalar_t__ get_region_id (unsigned long) ;
 unsigned long get_user_vsid (int *,unsigned long,int) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,scalar_t__,scalar_t__,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ mm_ctx_user_psize (int *) ;
 scalar_t__ mm_is_thread_local (struct mm_struct*) ;
 scalar_t__ pte_ci (int ) ;
 int pte_val (int ) ;
 int should_hash_preload (struct mm_struct*,unsigned long) ;
 int subpage_protection (struct mm_struct*,unsigned long) ;
 int user_segment_size (unsigned long) ;

__attribute__((used)) static void hash_preload(struct mm_struct *mm, unsigned long ea,
    bool is_exec, unsigned long trap)
{
 int hugepage_shift;
 unsigned long vsid;
 pgd_t *pgdir;
 pte_t *ptep;
 unsigned long flags;
 int rc, ssize, update_flags = 0;
 unsigned long access = _PAGE_PRESENT | _PAGE_READ | (is_exec ? _PAGE_EXEC : 0);

 BUG_ON(get_region_id(ea) != USER_REGION_ID);

 if (!should_hash_preload(mm, ea))
  return;

 DBG_LOW("hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx,"
  " trap=%lx\n", mm, mm->pgd, ea, access, trap);


 pgdir = mm->pgd;
 if (pgdir == ((void*)0))
  return;


 ssize = user_segment_size(ea);
 vsid = get_user_vsid(&mm->context, ea, ssize);
 if (!vsid)
  return;




 local_irq_save(flags);





 ptep = find_current_mm_pte(pgdir, ea, ((void*)0), &hugepage_shift);
 if (!ptep)
  goto out_exit;

 WARN_ON(hugepage_shift);
 if (mm_is_thread_local(mm))
  update_flags |= HPTE_LOCAL_UPDATE;
  rc = __hash_page_4K(ea, access, vsid, ptep, trap, update_flags,
        ssize, subpage_protection(mm, ea));




 if (rc == -1)
  hash_failure_debug(ea, access, vsid, trap, ssize,
       mm_ctx_user_psize(&mm->context),
       mm_ctx_user_psize(&mm->context),
       pte_val(*ptep));
out_exit:
 local_irq_restore(flags);
}
