
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_nested {int dummy; } ;
struct kvm {int mm; int mmu_lock; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int EAGAIN ;
 int ENOMEM ;
 unsigned long PMD_MASK ;
 int PMD_SHIFT ;
 int PTE_BITS_MUST_MATCH ;
 unsigned long PUD_MASK ;
 int PUD_SHIFT ;
 int WARN_ON_ONCE (int) ;
 int kvmhv_insert_nest_rmap (struct kvm*,unsigned long*,struct rmap_nested**) ;
 int * kvmppc_pmd_alloc () ;
 int kvmppc_pmd_free (int *) ;
 int * kvmppc_pte_alloc () ;
 int kvmppc_pte_free (int *) ;
 int kvmppc_radix_set_pte_at (struct kvm*,unsigned long,int *,int ) ;
 int kvmppc_radix_update_pte (struct kvm*,int *,int ,int,unsigned long,int ) ;
 int kvmppc_unmap_free_pmd_entry_table (struct kvm*,int *,unsigned long,unsigned int) ;
 int kvmppc_unmap_free_pud_entry_table (struct kvm*,int *,unsigned long,unsigned int) ;
 int kvmppc_unmap_pte (struct kvm*,int *,unsigned long,int ,int *,unsigned int) ;
 scalar_t__ mmu_notifier_retry (struct kvm*,unsigned long) ;
 int pgd_index (unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int pgd_populate (int ,int *,int *) ;
 scalar_t__ pgd_present (int ) ;
 scalar_t__ pmd_is_leaf (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_populate (int ,int *,int *) ;
 scalar_t__ pmd_present (int ) ;
 scalar_t__ pmd_raw (int ) ;
 int pmd_val (int ) ;
 int * pmdp_ptep (int *) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pte_present (int ) ;
 scalar_t__ pte_raw (int ) ;
 int pte_val (int ) ;
 int * pud_alloc_one (int ,unsigned long) ;
 int pud_free (int ,int *) ;
 scalar_t__ pud_is_leaf (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_populate (int ,int *,int *) ;
 scalar_t__ pud_present (int ) ;
 scalar_t__ pud_raw (int ) ;
 int pud_val (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvmppc_create_pte(struct kvm *kvm, pgd_t *pgtable, pte_t pte,
        unsigned long gpa, unsigned int level,
        unsigned long mmu_seq, unsigned int lpid,
        unsigned long *rmapp, struct rmap_nested **n_rmap)
{
 pgd_t *pgd;
 pud_t *pud, *new_pud = ((void*)0);
 pmd_t *pmd, *new_pmd = ((void*)0);
 pte_t *ptep, *new_ptep = ((void*)0);
 int ret;


 pgd = pgtable + pgd_index(gpa);
 pud = ((void*)0);
 if (pgd_present(*pgd))
  pud = pud_offset(pgd, gpa);
 else
  new_pud = pud_alloc_one(kvm->mm, gpa);

 pmd = ((void*)0);
 if (pud && pud_present(*pud) && !pud_is_leaf(*pud))
  pmd = pmd_offset(pud, gpa);
 else if (level <= 1)
  new_pmd = kvmppc_pmd_alloc();

 if (level == 0 && !(pmd && pmd_present(*pmd) && !pmd_is_leaf(*pmd)))
  new_ptep = kvmppc_pte_alloc();


 spin_lock(&kvm->mmu_lock);
 ret = -EAGAIN;
 if (mmu_notifier_retry(kvm, mmu_seq))
  goto out_unlock;


 ret = -ENOMEM;
 if (pgd_none(*pgd)) {
  if (!new_pud)
   goto out_unlock;
  pgd_populate(kvm->mm, pgd, new_pud);
  new_pud = ((void*)0);
 }
 pud = pud_offset(pgd, gpa);
 if (pud_is_leaf(*pud)) {
  unsigned long hgpa = gpa & PUD_MASK;


  if (level == 2) {
   if (pud_raw(*pud) == pte_raw(pte)) {
    ret = 0;
    goto out_unlock;
   }

   WARN_ON_ONCE((pud_val(*pud) ^ pte_val(pte)) &
       PTE_BITS_MUST_MATCH);
   kvmppc_radix_update_pte(kvm, (pte_t *)pud,
           0, pte_val(pte), hgpa, PUD_SHIFT);
   ret = 0;
   goto out_unlock;
  }




  if (!new_pmd) {
   ret = -EAGAIN;
   goto out_unlock;
  }

  kvmppc_unmap_pte(kvm, (pte_t *)pud, hgpa, PUD_SHIFT, ((void*)0),
     lpid);
 }
 if (level == 2) {
  if (!pud_none(*pud)) {





   kvmppc_unmap_free_pud_entry_table(kvm, pud, gpa, lpid);
  }
  kvmppc_radix_set_pte_at(kvm, gpa, (pte_t *)pud, pte);
  if (rmapp && n_rmap)
   kvmhv_insert_nest_rmap(kvm, rmapp, n_rmap);
  ret = 0;
  goto out_unlock;
 }
 if (pud_none(*pud)) {
  if (!new_pmd)
   goto out_unlock;
  pud_populate(kvm->mm, pud, new_pmd);
  new_pmd = ((void*)0);
 }
 pmd = pmd_offset(pud, gpa);
 if (pmd_is_leaf(*pmd)) {
  unsigned long lgpa = gpa & PMD_MASK;


  if (level == 1) {
   if (pmd_raw(*pmd) == pte_raw(pte)) {
    ret = 0;
    goto out_unlock;
   }

   WARN_ON_ONCE((pmd_val(*pmd) ^ pte_val(pte)) &
       PTE_BITS_MUST_MATCH);
   kvmppc_radix_update_pte(kvm, pmdp_ptep(pmd),
     0, pte_val(pte), lgpa, PMD_SHIFT);
   ret = 0;
   goto out_unlock;
  }





  if (!new_ptep) {
   ret = -EAGAIN;
   goto out_unlock;
  }

  kvmppc_unmap_pte(kvm, pmdp_ptep(pmd), lgpa, PMD_SHIFT, ((void*)0),
     lpid);
 }
 if (level == 1) {
  if (!pmd_none(*pmd)) {





   kvmppc_unmap_free_pmd_entry_table(kvm, pmd, gpa, lpid);
  }
  kvmppc_radix_set_pte_at(kvm, gpa, pmdp_ptep(pmd), pte);
  if (rmapp && n_rmap)
   kvmhv_insert_nest_rmap(kvm, rmapp, n_rmap);
  ret = 0;
  goto out_unlock;
 }
 if (pmd_none(*pmd)) {
  if (!new_ptep)
   goto out_unlock;
  pmd_populate(kvm->mm, pmd, new_ptep);
  new_ptep = ((void*)0);
 }
 ptep = pte_offset_kernel(pmd, gpa);
 if (pte_present(*ptep)) {

  if (pte_raw(*ptep) == pte_raw(pte)) {
   ret = 0;
   goto out_unlock;
  }

  WARN_ON_ONCE((pte_val(*ptep) ^ pte_val(pte)) &
       PTE_BITS_MUST_MATCH);
  kvmppc_radix_update_pte(kvm, ptep, 0, pte_val(pte), gpa, 0);
  ret = 0;
  goto out_unlock;
 }
 kvmppc_radix_set_pte_at(kvm, gpa, ptep, pte);
 if (rmapp && n_rmap)
  kvmhv_insert_nest_rmap(kvm, rmapp, n_rmap);
 ret = 0;

 out_unlock:
 spin_unlock(&kvm->mmu_lock);
 if (new_pud)
  pud_free(kvm->mm, new_pud);
 if (new_pmd)
  kvmppc_pmd_free(new_pmd);
 if (new_ptep)
  kvmppc_pte_free(new_ptep);
 return ret;
}
