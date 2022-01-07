
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int ipi_flush_tlb_mm ;
 int on_each_cpu (int ,struct mm_struct*,int) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 on_each_cpu(ipi_flush_tlb_mm, mm, 1);
}
