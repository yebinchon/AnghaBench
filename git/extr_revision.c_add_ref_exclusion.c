
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; } ;


 int string_list_append (struct string_list*,char const*) ;
 struct string_list* xcalloc (int,int) ;

void add_ref_exclusion(struct string_list **ref_excludes_p, const char *exclude)
{
 if (!*ref_excludes_p) {
  *ref_excludes_p = xcalloc(1, sizeof(**ref_excludes_p));
  (*ref_excludes_p)->strdup_strings = 1;
 }
 string_list_append(*ref_excludes_p, exclude);
}
