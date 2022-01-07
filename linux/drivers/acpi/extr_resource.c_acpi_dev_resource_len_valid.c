
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int pr_debug (char*,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool acpi_dev_resource_len_valid(u64 start, u64 end, u64 len, bool io)
{
 u64 reslen = end - start + 1;
 if (len && reslen && start <= end)
  return 1;

 pr_debug("ACPI: invalid or unassigned resource %s [%016llx - %016llx] length [%016llx]\n",
  io ? "io" : "mem", start, end, len);

 return 0;
}
