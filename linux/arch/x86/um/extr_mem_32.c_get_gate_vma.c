
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 scalar_t__ FIXADDR_USER_START ;
 struct vm_area_struct gate_vma ;

struct vm_area_struct *get_gate_vma(struct mm_struct *mm)
{
 return FIXADDR_USER_START ? &gate_vma : ((void*)0);
}
