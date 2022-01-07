
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static bool regcache_reg_present(unsigned long *cache_present, unsigned int idx)
{
 if (!cache_present)
  return 1;

 return test_bit(idx, cache_present);
}
