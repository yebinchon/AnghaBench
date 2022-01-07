
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 char* oid_to_hex (struct object_id const*) ;
 int warning (char*,char const*,char const*,char const*) ;

__attribute__((used)) static void warn_multiple_config(const struct object_id *treeish_name,
     const char *name, const char *option)
{
 const char *commit_string = "WORKTREE";
 if (treeish_name)
  commit_string = oid_to_hex(treeish_name);
 warning("%s:.gitmodules, multiple configurations found for "
   "'submodule.%s.%s'. Skipping second one!",
   commit_string, name, option);
}
