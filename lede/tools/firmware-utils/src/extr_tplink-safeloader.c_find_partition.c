
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_partition_entry {int name; } ;


 int error (int,int ,char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct flash_partition_entry *find_partition(
  struct flash_partition_entry *entries, size_t max_entries,
  const char *name, const char *error_msg)
{
 for (int i = 0; i < max_entries; i++, entries++) {
  if (strcmp(entries->name, name) == 0)
   return entries;
 }

 error(1, 0, "%s", error_msg);
 return ((void*)0);
}
