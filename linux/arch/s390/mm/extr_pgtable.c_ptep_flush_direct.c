
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flush_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 scalar_t__ MACHINE_HAS_TLB_LC ;
 int _PAGE_INVALID ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_of (int ) ;
 int mm_cpumask (struct mm_struct*) ;
 int pte_val (int ) ;
 int ptep_ipte_global (struct mm_struct*,unsigned long,int *,int) ;
 int ptep_ipte_local (struct mm_struct*,unsigned long,int *,int) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline pte_t ptep_flush_direct(struct mm_struct *mm,
          unsigned long addr, pte_t *ptep,
          int nodat)
{
 pte_t old;

 old = *ptep;
 if (unlikely(pte_val(old) & _PAGE_INVALID))
  return old;
 atomic_inc(&mm->context.flush_count);
 if (MACHINE_HAS_TLB_LC &&
     cpumask_equal(mm_cpumask(mm), cpumask_of(smp_processor_id())))
  ptep_ipte_local(mm, addr, ptep, nodat);
 else
  ptep_ipte_global(mm, addr, ptep, nodat);
 atomic_dec(&mm->context.flush_count);
 return old;
}
