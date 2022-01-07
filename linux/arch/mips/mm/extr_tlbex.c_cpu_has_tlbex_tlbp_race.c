
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_htw ;
 scalar_t__ cpu_has_shared_ftlb_ram ;

__attribute__((used)) static bool cpu_has_tlbex_tlbp_race(void)
{




 if (cpu_has_htw)
  return 1;





 if (cpu_has_shared_ftlb_ram)
  return 1;


 return 0;
}
