
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; } ;


 int free (char*) ;
 int is_absolute_path (char*) ;
 char* real_pathdup (char*,int ) ;

__attribute__((used)) static int canonicalize_ceiling_entry(struct string_list_item *item,
          void *cb_data)
{
 int *empty_entry_found = cb_data;
 char *ceil = item->string;

 if (!*ceil) {
  *empty_entry_found = 1;
  return 0;
 } else if (!is_absolute_path(ceil)) {
  return 0;
 } else if (*empty_entry_found) {

  return 1;
 } else {
  char *real_path = real_pathdup(ceil, 0);
  if (!real_path) {
   return 0;
  }
  free(item->string);
  item->string = real_path;
  return 1;
 }
}
