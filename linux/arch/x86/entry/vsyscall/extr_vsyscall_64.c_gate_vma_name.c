
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;



__attribute__((used)) static const char *gate_vma_name(struct vm_area_struct *vma)
{
 return "[vsyscall]";
}
