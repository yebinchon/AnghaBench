
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int local_flush_tlb_mm (struct mm_struct*) ;

__attribute__((used)) static inline void ipi_flush_tlb_mm(void *arg)
{
 struct mm_struct *mm = (struct mm_struct *)arg;

 local_flush_tlb_mm(mm);
}
