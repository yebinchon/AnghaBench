
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_PPTT_CACHE_TYPE_UNIFIED ;
 int ACPI_PPTT_MASK_CACHE_TYPE ;

__attribute__((used)) static inline bool acpi_pptt_match_type(int table_type, int type)
{
 return ((table_type & ACPI_PPTT_MASK_CACHE_TYPE) == type ||
  table_type & ACPI_PPTT_CACHE_TYPE_UNIFIED & type);
}
