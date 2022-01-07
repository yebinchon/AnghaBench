
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int BITS_PER_LONG ;
 int PAGE_SIZE ;

__attribute__((used)) static unsigned long get_ind_bit(__u64 addr, unsigned long bit_nr, bool swap)
{
 unsigned long bit;

 bit = bit_nr + (addr % PAGE_SIZE) * 8;

 return swap ? (bit ^ (BITS_PER_LONG - 1)) : bit;
}
