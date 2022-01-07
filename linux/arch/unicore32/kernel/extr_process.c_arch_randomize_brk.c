
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int brk; } ;


 unsigned long randomize_page (int ,int) ;

unsigned long arch_randomize_brk(struct mm_struct *mm)
{
 return randomize_page(mm->brk, 0x02000000);
}
