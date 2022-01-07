
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ read_c0_cvmcount () ;

void __delay(unsigned long loops)
{
 u64 cur, end;

 cur = read_c0_cvmcount();
 end = cur + loops;

 while (end > cur)
  cur = read_c0_cvmcount();
}
