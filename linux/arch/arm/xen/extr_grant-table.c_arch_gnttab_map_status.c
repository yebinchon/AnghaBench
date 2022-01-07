
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int grant_status_t ;


 int ENOSYS ;

int arch_gnttab_map_status(uint64_t *frames, unsigned long nr_gframes,
      unsigned long max_nr_gframes,
      grant_status_t **__shared)
{
 return -ENOSYS;
}
