
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 int starts_with (char const*,char const*) ;
 int string_list_find_insert_index (struct string_list const*,char const*,int ) ;
 int string_list_has_string (struct string_list const*,char const*) ;

const char *find_descendant_ref(const char *dirname,
    const struct string_list *extras,
    const struct string_list *skip)
{
 int pos;

 if (!extras)
  return ((void*)0);







 for (pos = string_list_find_insert_index(extras, dirname, 0);
      pos < extras->nr; pos++) {
  const char *extra_refname = extras->items[pos].string;

  if (!starts_with(extra_refname, dirname))
   break;

  if (!skip || !string_list_has_string(skip, extra_refname))
   return extra_refname;
 }
 return ((void*)0);
}
