
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;
 int top ;

void FPU_pop(void)
{
 fpu_tag_word |= 3 << ((top & 7) * 2);
 top++;
}
