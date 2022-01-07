
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 scalar_t__ EASI_BASE ;
 int EASI_SIZE ;
 int EASI_START ;
 scalar_t__ IO_BASE ;
 int IO_SIZE ;
 int IO_START ;
 int PGDIR_SIZE ;
 struct vm_area_struct TLB_FLUSH_VMA (struct mm_struct*,int ) ;
 int VM_EXEC ;
 int flush_tlb_range (struct vm_area_struct*,int,int) ;
 int memcpy (int *,int *,int) ;
 int * pgd_offset (struct mm_struct*,int) ;

__attribute__((used)) static void ecard_init_pgtables(struct mm_struct *mm)
{
 struct vm_area_struct vma = TLB_FLUSH_VMA(mm, VM_EXEC);
 pgd_t *src_pgd, *dst_pgd;

 src_pgd = pgd_offset(mm, (unsigned long)IO_BASE);
 dst_pgd = pgd_offset(mm, IO_START);

 memcpy(dst_pgd, src_pgd, sizeof(pgd_t) * (IO_SIZE / PGDIR_SIZE));

 src_pgd = pgd_offset(mm, (unsigned long)EASI_BASE);
 dst_pgd = pgd_offset(mm, EASI_START);

 memcpy(dst_pgd, src_pgd, sizeof(pgd_t) * (EASI_SIZE / PGDIR_SIZE));

 flush_tlb_range(&vma, IO_START, IO_START + IO_SIZE);
 flush_tlb_range(&vma, EASI_START, EASI_START + EASI_SIZE);
}
