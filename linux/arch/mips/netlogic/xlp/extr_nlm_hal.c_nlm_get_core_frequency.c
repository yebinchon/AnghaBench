
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_xlpii () ;
 unsigned int nlm_xlp2_get_core_frequency (int,int) ;
 unsigned int nlm_xlp_get_core_frequency (int,int) ;

unsigned int nlm_get_core_frequency(int node, int core)
{
 if (cpu_is_xlpii())
  return nlm_xlp2_get_core_frequency(node, core);
 else
  return nlm_xlp_get_core_frequency(node, core);
}
