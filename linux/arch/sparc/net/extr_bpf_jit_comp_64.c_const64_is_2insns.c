
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int analyze_64bit_constant (unsigned long,unsigned long,int*,int*,int*) ;

__attribute__((used)) static bool const64_is_2insns(unsigned long high_bits,
         unsigned long low_bits)
{
 int highest_bit_set, lowest_bit_set, all_bits_between_are_set;

 if (high_bits == 0 || high_bits == 0xffffffff)
  return 1;

 analyze_64bit_constant(high_bits, low_bits,
          &highest_bit_set, &lowest_bit_set,
          &all_bits_between_are_set);

 if ((highest_bit_set == 63 || lowest_bit_set == 0) &&
     all_bits_between_are_set != 0)
  return 1;

 if (highest_bit_set - lowest_bit_set < 21)
  return 1;

 return 0;
}
