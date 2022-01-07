
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct command {int (* func ) (struct ref_store*,char const**) ;scalar_t__ name; } ;


 struct command* commands ;
 int die (char*,...) ;
 char** get_store (char const**,struct ref_store**) ;
 int setup_git_directory () ;
 int strcmp (char const*,scalar_t__) ;
 int stub1 (struct ref_store*,char const**) ;

int cmd__ref_store(int argc, const char **argv)
{
 struct ref_store *refs;
 const char *func;
 struct command *cmd;

 setup_git_directory();

 argv = get_store(argv + 1, &refs);

 func = *argv++;
 if (!func)
  die("ref function required");
 for (cmd = commands; cmd->name; cmd++) {
  if (!strcmp(func, cmd->name))
   return cmd->func(refs, argv);
 }
 die("unknown function %s", func);
 return 0;
}
