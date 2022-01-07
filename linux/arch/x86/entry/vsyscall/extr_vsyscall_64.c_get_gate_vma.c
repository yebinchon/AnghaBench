
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ ia32_compat; } ;
struct mm_struct {TYPE_1__ context; } ;


 scalar_t__ NONE ;
 struct vm_area_struct gate_vma ;
 scalar_t__ vsyscall_mode ;

struct vm_area_struct *get_gate_vma(struct mm_struct *mm)
{




 if (vsyscall_mode == NONE)
  return ((void*)0);
 return &gate_vma;
}
