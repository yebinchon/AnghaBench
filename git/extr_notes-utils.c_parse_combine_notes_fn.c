
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * combine_notes_fn ;


 int * combine_notes_cat_sort_uniq ;
 int * combine_notes_concatenate ;
 int * combine_notes_ignore ;
 int * combine_notes_overwrite ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static combine_notes_fn parse_combine_notes_fn(const char *v)
{
 if (!strcasecmp(v, "overwrite"))
  return combine_notes_overwrite;
 else if (!strcasecmp(v, "ignore"))
  return combine_notes_ignore;
 else if (!strcasecmp(v, "concatenate"))
  return combine_notes_concatenate;
 else if (!strcasecmp(v, "cat_sort_uniq"))
  return combine_notes_cat_sort_uniq;
 else
  return ((void*)0);
}
