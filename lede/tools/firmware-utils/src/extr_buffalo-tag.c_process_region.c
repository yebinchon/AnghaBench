
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 int ERR (char*,char*) ;
 int num_regions ;
 char* region_code ;
 int region_mask ;
 char** region_table ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int process_region(char *reg)
{
 int i;

 if (strlen(reg) != 2) {
  ERR("invalid region code '%s'", reg);
  return -1;
 }

 if (strcmp(reg, "M_") == 0) {
  region_code = reg;
  region_mask |= ~0;
  num_regions = 32;
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(region_table); i++)
  if (strcmp(reg, region_table[i]) == 0) {
   region_code = reg;
   region_mask |= 1 << i;
   num_regions++;
   return 0;
  }

 ERR("unknown region code '%s'", reg);
 return -1;
}
