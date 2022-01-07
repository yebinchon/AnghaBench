
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int __shrink_ple_window(unsigned int val,
  unsigned int base, unsigned int modifier, unsigned int min)
{
 if (modifier < 1)
  return base;

 if (modifier < base)
  val /= modifier;
 else
  val -= modifier;

 return max(val, min);
}
