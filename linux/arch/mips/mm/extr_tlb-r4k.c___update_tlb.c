
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pud_t ;
struct TYPE_6__ {unsigned long pte_high; int pte_low; } ;
typedef TYPE_1__ pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_7__ {scalar_t__ active_mm; } ;


 int HPAGE_SIZE ;
 int PAGE_MASK ;
 int PM_DEFAULT_MASK ;
 int PM_HUGE_MASK ;
 int _PFNX_MASK ;
 int cpu_asid_mask (int *) ;
 scalar_t__ cpu_has_mmid ;
 scalar_t__ cpu_has_xpa ;
 TYPE_4__* current ;
 int current_cpu_data ;
 int flush_micro_tlb_vm (struct vm_area_struct*) ;
 int htw_start () ;
 int htw_stop () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtc0_tlbw_hazard () ;
 int * pgd_offset (scalar_t__,unsigned long) ;
 scalar_t__ pmd_huge (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 TYPE_1__* pte_offset_map (int *,unsigned long) ;
 unsigned long pte_to_entrylo (unsigned long) ;
 unsigned long pte_val (TYPE_1__) ;
 int * pud_offset (int *,unsigned long) ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlb_write_random () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (unsigned long) ;
 int write_c0_entrylo1 (unsigned long) ;
 int write_c0_pagemask (int ) ;
 int writex_c0_entrylo0 (int) ;
 int writex_c0_entrylo1 (int) ;

void __update_tlb(struct vm_area_struct * vma, unsigned long address, pte_t pte)
{
 unsigned long flags;
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;
 int idx, pid;




 if (current->active_mm != vma->vm_mm)
  return;

 local_irq_save(flags);

 htw_stop();
 address &= (PAGE_MASK << 1);
 if (cpu_has_mmid) {
  write_c0_entryhi(address);
 } else {
  pid = read_c0_entryhi() & cpu_asid_mask(&current_cpu_data);
  write_c0_entryhi(address | pid);
 }
 pgdp = pgd_offset(vma->vm_mm, address);
 mtc0_tlbw_hazard();
 tlb_probe();
 tlb_probe_hazard();
 pudp = pud_offset(pgdp, address);
 pmdp = pmd_offset(pudp, address);
 idx = read_c0_index();
 {
  ptep = pte_offset_map(pmdp, address);
  write_c0_entrylo0(pte_to_entrylo(pte_val(*ptep++)));
  write_c0_entrylo1(pte_to_entrylo(pte_val(*ptep)));

  mtc0_tlbw_hazard();
  if (idx < 0)
   tlb_write_random();
  else
   tlb_write_indexed();
 }
 tlbw_use_hazard();
 htw_start();
 flush_micro_tlb_vm(vma);
 local_irq_restore(flags);
}
