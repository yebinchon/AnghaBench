
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;
struct object_id {int dummy; } ;


 int REF_ISSYMREF ;
 int die (char*,char const*) ;
 char* resolve_ref_unsafe (char const*,int ,int *,int*) ;
 struct string_list_item* string_list_append (void*,int ) ;
 int strip_namespace (char const*) ;
 int xstrdup (int ) ;

__attribute__((used)) static int find_symref(const char *refname, const struct object_id *oid,
         int flag, void *cb_data)
{
 const char *symref_target;
 struct string_list_item *item;

 if ((flag & REF_ISSYMREF) == 0)
  return 0;
 symref_target = resolve_ref_unsafe(refname, 0, ((void*)0), &flag);
 if (!symref_target || (flag & REF_ISSYMREF) == 0)
  die("'%s' is a symref but it is not?", refname);
 item = string_list_append(cb_data, strip_namespace(refname));
 item->util = xstrdup(strip_namespace(symref_target));
 return 0;
}
