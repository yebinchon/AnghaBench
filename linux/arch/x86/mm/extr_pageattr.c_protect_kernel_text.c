
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;


 int _PAGE_NX ;
 scalar_t__ _etext ;
 scalar_t__ _text ;
 scalar_t__ overlaps (unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static pgprotval_t protect_kernel_text(unsigned long start, unsigned long end)
{
 unsigned long t_end = (unsigned long)_etext - 1;
 unsigned long t_start = (unsigned long)_text;

 if (overlaps(start, end, t_start, t_end))
  return _PAGE_NX;
 return 0;
}
