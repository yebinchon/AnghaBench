
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int __sbi_tlb_flush_range (int ,int ,int) ;
 int mm_cpumask (struct mm_struct*) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 __sbi_tlb_flush_range(mm_cpumask(mm), 0, -1);
}
