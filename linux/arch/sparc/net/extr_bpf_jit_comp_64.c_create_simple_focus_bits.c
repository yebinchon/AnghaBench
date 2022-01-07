
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long create_simple_focus_bits(unsigned long high_bits,
           unsigned long low_bits,
           int lowest_bit_set, int shift)
{
 long hi, lo;

 if (lowest_bit_set < 32) {
  lo = (low_bits >> lowest_bit_set) << shift;
  hi = ((high_bits << (32 - lowest_bit_set)) << shift);
 } else {
  lo = 0;
  hi = ((high_bits >> (lowest_bit_set - 32)) << shift);
 }
 return hi | lo;
}
