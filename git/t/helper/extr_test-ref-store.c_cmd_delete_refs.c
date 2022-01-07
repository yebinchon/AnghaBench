
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct ref_store {int dummy; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 unsigned int arg_flags (int ,char*) ;
 int refs_delete_refs (struct ref_store*,char const*,struct string_list*,unsigned int) ;
 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static int cmd_delete_refs(struct ref_store *refs, const char **argv)
{
 unsigned int flags = arg_flags(*argv++, "flags");
 const char *msg = *argv++;
 struct string_list refnames = STRING_LIST_INIT_NODUP;

 while (*argv)
  string_list_append(&refnames, *argv++);

 return refs_delete_refs(refs, msg, &refnames, flags);
}
