
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int tlbsize; unsigned int tlbsizevtlb; } ;



__attribute__((used)) static unsigned int calculate_ftlb_probability(struct cpuinfo_mips *c)
{

 unsigned int probability = c->tlbsize / c->tlbsizevtlb;
 if (probability >= 12)
  return 1;
 else if (probability >= 6)
  return 2;
 else




  return 3;
}
