
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int cmd; int argc; char** argv; } ;
typedef enum subcmd { ____Placeholder_subcmd } subcmd ;


 int SUBCMD_APPLY ;
 int SUBCMD_LIST ;
 int SUBCMD_POP ;
 int SUBCMD_PUSH ;
 int strcmp (char*,char*) ;
 int usage (char*,char*) ;

__attribute__((used)) static void parse_subcommand(struct opts *opts, int argc, char *argv[])
{
 char *arg = (argc < 2) ? "push" : argv[1];
 enum subcmd cmd;

 if (!strcmp(arg, "apply")) {
  cmd = SUBCMD_APPLY;
 } else if (!strcmp(arg, "list")) {
  cmd = SUBCMD_LIST;
 } else if (!strcmp(arg, "pop")) {
  cmd = SUBCMD_POP;
 } else if (!strcmp(arg, "push")) {
  cmd = SUBCMD_PUSH;
 } else {
  usage("invalid command %s", arg);
  return;
 }

 opts->cmd = cmd;
 opts->argc = (argc < 2) ? argc - 1 : argc - 2;
 opts->argv = argv;
}
