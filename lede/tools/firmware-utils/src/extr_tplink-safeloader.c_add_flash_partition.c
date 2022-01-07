
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_partition_entry {unsigned long base; unsigned long size; int * name; } ;


 int * calloc (int,scalar_t__) ;
 int error (int,int ,char*) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int add_flash_partition(
  struct flash_partition_entry *part_list,
  size_t max_entries,
  const char *name,
  unsigned long base,
  unsigned long size)
{
 int ptr;

 for (ptr = 0; ptr < max_entries; ptr++, part_list++) {
  if (part_list->name == ((void*)0) &&
    part_list->base == 0 &&
    part_list->size == 0)
   break;
 }

 if (ptr == max_entries) {
  error(1, 0, "No free flash part entry available.");
 }

 part_list->name = calloc(1, strlen(name) + 1);
 if (!part_list->name) {
  error(1, 0, "Unable to allocate memory");
 }

 memcpy((char *)part_list->name, name, strlen(name));
 part_list->base = base;
 part_list->size = size;

 return 0;
}
