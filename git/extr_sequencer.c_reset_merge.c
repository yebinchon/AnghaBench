
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int ) ;
 int argv_array_pushl (struct argv_array*,char*,char*,int *) ;
 int is_null_oid (struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 int run_command_v_opt (int ,int ) ;

__attribute__((used)) static int reset_merge(const struct object_id *oid)
{
 int ret;
 struct argv_array argv = ARGV_ARRAY_INIT;

 argv_array_pushl(&argv, "reset", "--merge", ((void*)0));

 if (!is_null_oid(oid))
  argv_array_push(&argv, oid_to_hex(oid));

 ret = run_command_v_opt(argv.argv, RUN_GIT_CMD);
 argv_array_clear(&argv);

 return ret;
}
