
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_tag_word ;
 int top ;

void FPU_settag0(int tag)
{
 int regnr = top;
 regnr &= 7;
 fpu_tag_word &= ~(3 << (regnr * 2));
 fpu_tag_word |= (tag & 3) << (regnr * 2);
}
