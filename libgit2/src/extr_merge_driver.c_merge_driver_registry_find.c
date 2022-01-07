
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drivers; } ;


 int git_vector_search2 (size_t*,int *,int ,char const*) ;
 int merge_driver_entry_search ;
 TYPE_1__ merge_driver_registry ;

__attribute__((used)) static int merge_driver_registry_find(size_t *pos, const char *name)
{
 return git_vector_search2(pos, &merge_driver_registry.drivers,
  merge_driver_entry_search, name);
}
