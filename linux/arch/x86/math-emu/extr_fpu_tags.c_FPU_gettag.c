
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;

int FPU_gettag(int regnr)
{
 return (fpu_tag_word >> ((regnr & 7) * 2)) & 3;
}
