
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 scalar_t__ __IA64_UNCACHED_OFFSET ;

char *pci_get_legacy_mem(struct pci_bus *bus)
{
 return (char *)__IA64_UNCACHED_OFFSET;
}
