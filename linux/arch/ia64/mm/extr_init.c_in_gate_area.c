
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int in_gate_area_no_mm (unsigned long) ;

int in_gate_area(struct mm_struct *mm, unsigned long addr)
{
 return in_gate_area_no_mm(addr);
}
