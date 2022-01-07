
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum cache_type { ____Placeholder_cache_type } cache_type ;


 int ACPI_PPTT_CACHE_TYPE_DATA ;
 int ACPI_PPTT_CACHE_TYPE_INSTR ;
 int ACPI_PPTT_CACHE_TYPE_UNIFIED ;



 int pr_debug (char*) ;

__attribute__((used)) static u8 acpi_cache_type(enum cache_type type)
{
 switch (type) {
 case 130:
  pr_debug("Looking for data cache\n");
  return ACPI_PPTT_CACHE_TYPE_DATA;
 case 129:
  pr_debug("Looking for instruction cache\n");
  return ACPI_PPTT_CACHE_TYPE_INSTR;
 default:
 case 128:
  pr_debug("Looking for unified cache\n");






  return ACPI_PPTT_CACHE_TYPE_UNIFIED;
 }
}
