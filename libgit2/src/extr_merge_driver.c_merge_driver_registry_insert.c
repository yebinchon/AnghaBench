
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * driver; int name; } ;
typedef TYPE_1__ git_merge_driver_entry ;
typedef int git_merge_driver ;
struct TYPE_7__ {int drivers; } ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,scalar_t__) ;
 int git_vector_insert_sorted (int *,TYPE_1__*,int *) ;
 TYPE_2__ merge_driver_registry ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int merge_driver_registry_insert(
 const char *name, git_merge_driver *driver)
{
 git_merge_driver_entry *entry;

 entry = git__calloc(1, sizeof(git_merge_driver_entry) + strlen(name) + 1);
 GIT_ERROR_CHECK_ALLOC(entry);

 strcpy(entry->name, name);
 entry->driver = driver;

 return git_vector_insert_sorted(
  &merge_driver_registry.drivers, entry, ((void*)0));
}
