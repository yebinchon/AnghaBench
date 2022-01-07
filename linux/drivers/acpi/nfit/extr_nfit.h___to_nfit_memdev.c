
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_mem {struct acpi_nfit_memory_map* memdev_pmem; struct acpi_nfit_memory_map* memdev_dcr; } ;
struct acpi_nfit_memory_map {int dummy; } ;



__attribute__((used)) static inline struct acpi_nfit_memory_map *__to_nfit_memdev(
  struct nfit_mem *nfit_mem)
{
 if (nfit_mem->memdev_dcr)
  return nfit_mem->memdev_dcr;
 return nfit_mem->memdev_pmem;
}
