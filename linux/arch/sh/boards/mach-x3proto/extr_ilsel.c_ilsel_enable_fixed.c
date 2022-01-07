
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ilsel_source_t ;


 int EBUSY ;
 int __ilsel_enable (int ,unsigned int) ;
 int ilsel_level_map ;
 unsigned int ilsel_offset (unsigned int) ;
 scalar_t__ test_and_set_bit (unsigned int,int *) ;

int ilsel_enable_fixed(ilsel_source_t set, unsigned int level)
{
 unsigned int bit = ilsel_offset(level - 1);

 if (test_and_set_bit(bit, &ilsel_level_map))
  return -EBUSY;

 __ilsel_enable(set, bit);

 return bit;
}
