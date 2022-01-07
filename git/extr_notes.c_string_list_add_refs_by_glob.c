
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; } ;
struct object_id {int dummy; } ;


 int assert (int ) ;
 int for_each_glob_ref (int ,char const*,struct string_list*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 scalar_t__ has_glob_specials (char const*) ;
 int string_list_add_one_ref ;
 int string_list_append (struct string_list*,char const*) ;
 int unsorted_string_list_has_string (struct string_list*,char const*) ;
 int warning (char*,char const*) ;

void string_list_add_refs_by_glob(struct string_list *list, const char *glob)
{
 assert(list->strdup_strings);
 if (has_glob_specials(glob)) {
  for_each_glob_ref(string_list_add_one_ref, glob, list);
 } else {
  struct object_id oid;
  if (get_oid(glob, &oid))
   warning("notes ref %s is invalid", glob);
  if (!unsorted_string_list_has_string(list, glob))
   string_list_append(list, glob);
 }
}
