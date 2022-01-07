
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CSSELR_MAX ;
 scalar_t__ is_valid_cache (unsigned int) ;

__attribute__((used)) static unsigned int num_demux_regs(void)
{
 unsigned int i, count = 0;

 for (i = 0; i < CSSELR_MAX; i++)
  if (is_valid_cache(i))
   count++;

 return count;
}
