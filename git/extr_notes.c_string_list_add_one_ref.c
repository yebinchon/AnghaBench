
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int string_list_append (struct string_list*,char const*) ;
 int unsorted_string_list_has_string (struct string_list*,char const*) ;

__attribute__((used)) static int string_list_add_one_ref(const char *refname, const struct object_id *oid,
       int flag, void *cb)
{
 struct string_list *refs = cb;
 if (!unsorted_string_list_has_string(refs, refname))
  string_list_append(refs, refname);
 return 0;
}
