
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ r_info; scalar_t__ r_addend; } ;
typedef TYPE_1__ Elf64_Rela ;



__attribute__((used)) static int relacmp(const void *_x, const void *_y)
{
 const Elf64_Rela *x, *y;

 y = (Elf64_Rela *)_x;
 x = (Elf64_Rela *)_y;





 if (x->r_info < y->r_info)
  return -1;
 else if (x->r_info > y->r_info)
  return 1;
 else if (x->r_addend < y->r_addend)
  return -1;
 else if (x->r_addend > y->r_addend)
  return 1;
 else
  return 0;
}
