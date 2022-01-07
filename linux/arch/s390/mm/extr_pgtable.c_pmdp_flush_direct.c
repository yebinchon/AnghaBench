
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flush_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pmd_t ;


 scalar_t__ MACHINE_HAS_TLB_LC ;
 int _SEGMENT_ENTRY_INVALID ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_of (int ) ;
 int mm_cpumask (struct mm_struct*) ;
 int pmd_val (int ) ;
 int pmdp_idte_global (struct mm_struct*,unsigned long,int *) ;
 int pmdp_idte_local (struct mm_struct*,unsigned long,int *) ;
 int smp_processor_id () ;

__attribute__((used)) static inline pmd_t pmdp_flush_direct(struct mm_struct *mm,
          unsigned long addr, pmd_t *pmdp)
{
 pmd_t old;

 old = *pmdp;
 if (pmd_val(old) & _SEGMENT_ENTRY_INVALID)
  return old;
 atomic_inc(&mm->context.flush_count);
 if (MACHINE_HAS_TLB_LC &&
     cpumask_equal(mm_cpumask(mm), cpumask_of(smp_processor_id())))
  pmdp_idte_local(mm, addr, pmdp);
 else
  pmdp_idte_global(mm, addr, pmdp);
 atomic_dec(&mm->context.flush_count);
 return old;
}
