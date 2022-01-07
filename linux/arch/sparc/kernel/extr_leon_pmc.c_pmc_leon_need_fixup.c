
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amba_system_id ;
 unsigned int* pmc_leon_fixup_ids ;

__attribute__((used)) static int pmc_leon_need_fixup(void)
{
 unsigned int systemid = amba_system_id >> 16;
 unsigned int *id;

 id = &pmc_leon_fixup_ids[0];
 while (*id != 0) {
  if (*id == systemid)
   return 1;
  id++;
 }

 return 0;
}
