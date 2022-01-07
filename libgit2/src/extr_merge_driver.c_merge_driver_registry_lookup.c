
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_merge_driver_entry ;
struct TYPE_2__ {int drivers; } ;


 int * git_vector_get (int *,size_t) ;
 TYPE_1__ merge_driver_registry ;
 int merge_driver_registry_find (size_t*,char const*) ;

__attribute__((used)) static git_merge_driver_entry *merge_driver_registry_lookup(
 size_t *pos, const char *name)
{
 git_merge_driver_entry *entry = ((void*)0);

 if (!merge_driver_registry_find(pos, name))
  entry = git_vector_get(&merge_driver_registry.drivers, *pos);

 return entry;
}
