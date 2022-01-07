
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_pfn_t ;


 int ENOSYS ;

int arch_gnttab_map_shared(xen_pfn_t *frames, unsigned long nr_gframes,
      unsigned long max_nr_gframes,
      void **__shared)
{
 return -ENOSYS;
}
