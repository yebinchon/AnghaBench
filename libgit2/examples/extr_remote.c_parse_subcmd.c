
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int cmd; int argc; char** argv; } ;
typedef enum subcmd { ____Placeholder_subcmd } subcmd ;


 int strcmp (char*,char*) ;
 int subcmd_add ;
 int subcmd_remove ;
 int subcmd_rename ;
 int subcmd_seturl ;
 int subcmd_show ;
 int usage (char*,char*) ;

__attribute__((used)) static void parse_subcmd(
 struct opts *opt, int argc, char **argv)
{
 char *arg = argv[1];
 enum subcmd cmd = 0;

 if (argc < 2)
  usage("no command specified", ((void*)0));

 if (!strcmp(arg, "add")) {
  cmd = subcmd_add;
 } else if (!strcmp(arg, "remove")) {
  cmd = subcmd_remove;
 } else if (!strcmp(arg, "rename")) {
  cmd = subcmd_rename;
 } else if (!strcmp(arg, "set-url")) {
  cmd = subcmd_seturl;
 } else if (!strcmp(arg, "show")) {
  cmd = subcmd_show;
 } else {
  usage("command is not valid", arg);
 }
 opt->cmd = cmd;

 opt->argc = argc - 2;
 opt->argv = argv + 2;
}
