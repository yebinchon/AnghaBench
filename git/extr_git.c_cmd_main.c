
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 char* _ (char*) ;
 int commit_pager_choice () ;
 int die (char*,char const*) ;
 scalar_t__ errno ;
 int exit (int) ;
 char* find_last_dir_sep (char const*) ;
 int fprintf (int ,char*,char const*,char const*) ;
 char* git_more_info_string ;
 char* git_usage_string ;
 int handle_builtin (int,char const**) ;
 int handle_options (char const***,int*,int *) ;
 char* help_unknown_cmd (char const*) ;
 int list_common_cmds_help () ;
 int printf (char*,char*) ;
 int run_argv (int*,char const***) ;
 int setup_path () ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int trace_command_performance (char const**) ;

int cmd_main(int argc, const char **argv)
{
 const char *cmd;
 int done_help = 0;

 cmd = argv[0];
 if (!cmd)
  cmd = "git-help";
 else {
  const char *slash = find_last_dir_sep(cmd);
  if (slash)
   cmd = slash + 1;
 }

 trace_command_performance(argv);
 if (skip_prefix(cmd, "git-", &cmd)) {
  argv[0] = cmd;
  handle_builtin(argc, argv);
  die(_("cannot handle %s as a builtin"), cmd);
 }


 argv++;
 argc--;
 handle_options(&argv, &argc, ((void*)0));
 if (argc > 0) {

  skip_prefix(argv[0], "--", &argv[0]);
 } else {

  commit_pager_choice();
  printf(_("usage: %s\n\n"), git_usage_string);
  list_common_cmds_help();
  printf("\n%s\n", _(git_more_info_string));
  exit(1);
 }
 cmd = argv[0];







 setup_path();

 while (1) {
  int was_alias = run_argv(&argc, &argv);
  if (errno != ENOENT)
   break;
  if (was_alias) {
   fprintf(stderr, _("expansion of alias '%s' failed; "
       "'%s' is not a git command\n"),
    cmd, argv[0]);
   exit(1);
  }
  if (!done_help) {
   cmd = argv[0] = help_unknown_cmd(cmd);
   done_help = 1;
  } else
   break;
 }

 fprintf(stderr, _("failed to run command '%s': %s\n"),
  cmd, strerror(errno));

 return 1;
}
