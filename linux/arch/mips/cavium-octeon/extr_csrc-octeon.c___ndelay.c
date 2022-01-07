
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 unsigned long octeon_ndelay_factor ;
 scalar_t__ read_c0_cvmcount () ;

void __ndelay(unsigned long ns)
{
 u64 cur, end, inc;

 cur = read_c0_cvmcount();

 inc = ((ns * octeon_ndelay_factor) >> 16);
 end = cur + inc;

 while (end > cur)
  cur = read_c0_cvmcount();
}
