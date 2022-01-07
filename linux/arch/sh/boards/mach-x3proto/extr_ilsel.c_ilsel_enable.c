
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ilsel_source_t ;


 int EINVAL ;
 scalar_t__ ILSEL_KEY ;
 int ILSEL_LEVELS ;
 int __ilsel_enable (scalar_t__,unsigned int) ;
 unsigned int find_first_zero_bit (int *,int ) ;
 int ilsel_level_map ;
 int pr_err (char*) ;
 scalar_t__ test_and_set_bit (unsigned int,int *) ;
 scalar_t__ unlikely (int) ;

int ilsel_enable(ilsel_source_t set)
{
 unsigned int bit;

 if (unlikely(set > ILSEL_KEY)) {
  pr_err("Aliased sources must use ilsel_enable_fixed()\n");
  return -EINVAL;
 }

 do {
  bit = find_first_zero_bit(&ilsel_level_map, ILSEL_LEVELS);
 } while (test_and_set_bit(bit, &ilsel_level_map));

 __ilsel_enable(set, bit);

 return bit;
}
