
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int __grow_ple_window(unsigned int val,
  unsigned int base, unsigned int modifier, unsigned int max)
{
 u64 ret = val;

 if (modifier < 1)
  return base;

 if (modifier < base)
  ret *= modifier;
 else
  ret += modifier;

 return min(ret, (u64)max);
}
