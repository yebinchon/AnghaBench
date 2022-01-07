
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;
 int top ;

int FPU_gettag0(void)
{
 return (fpu_tag_word >> ((top & 7) * 2)) & 3;
}
