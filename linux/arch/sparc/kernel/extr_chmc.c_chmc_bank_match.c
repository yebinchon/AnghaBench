
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmc_bank_info {scalar_t__ valid; unsigned long um; unsigned long uk; unsigned long lm; unsigned long lk; } ;


 unsigned long PA_LOWER_BITS ;
 unsigned long PA_LOWER_BITS_SHIFT ;
 unsigned long PA_UPPER_BITS ;
 unsigned long PA_UPPER_BITS_SHIFT ;

__attribute__((used)) static int chmc_bank_match(struct chmc_bank_info *bp, unsigned long phys_addr)
{
 unsigned long upper_bits = (phys_addr & PA_UPPER_BITS) >> PA_UPPER_BITS_SHIFT;
 unsigned long lower_bits = (phys_addr & PA_LOWER_BITS) >> PA_LOWER_BITS_SHIFT;


 if (bp->valid == 0)
  return 0;


 upper_bits ^= bp->um;
 upper_bits = ~upper_bits;
 upper_bits |= bp->uk;
 upper_bits = ~upper_bits;

 if (upper_bits)
  return 0;


 lower_bits ^= bp->lm;
 lower_bits = ~lower_bits;
 lower_bits |= bp->lk;
 lower_bits = ~lower_bits;

 if (lower_bits)
  return 0;


 return 1;
}
