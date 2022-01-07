
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct argv_array {int dummy; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int collect_changed_submodules (struct repository*,struct string_list*,struct argv_array*) ;
 int free_submodules_oids (struct string_list*) ;
 int is_null_oid (struct object_id*) ;
 char* oid_to_hex (struct object_id*) ;
 int submodule_from_path (struct repository*,int *,int *) ;

int submodule_touches_in_range(struct repository *r,
          struct object_id *excl_oid,
          struct object_id *incl_oid)
{
 struct string_list subs = STRING_LIST_INIT_DUP;
 struct argv_array args = ARGV_ARRAY_INIT;
 int ret;


 if (!submodule_from_path(r, ((void*)0), ((void*)0)))
  return 0;

 argv_array_push(&args, "--");
 argv_array_push(&args, oid_to_hex(incl_oid));
 if (!is_null_oid(excl_oid)) {
  argv_array_push(&args, "--not");
  argv_array_push(&args, oid_to_hex(excl_oid));
 }

 collect_changed_submodules(r, &subs, &args);
 ret = subs.nr;

 argv_array_clear(&args);

 free_submodules_oids(&subs);
 return ret;
}
