
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argv; } ;
struct child_process {int clean_on_exit; int wait_after_clean; int silent_exec_failure; char* trace2_child_class; TYPE_1__ args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 scalar_t__ ENOENT ;
 int _ (char*) ;
 int argv_array_pushf (TYPE_1__*,char*,char const*) ;
 int argv_array_pushv (TYPE_1__*,char const**) ;
 int check_pager_config (char const*) ;
 int commit_pager_choice () ;
 int die (int ,char const*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ get_super_prefix () ;
 int is_builtin (char const*) ;
 int run_command (struct child_process*) ;
 int trace2_cmd_name (char*) ;
 int trace_argv_printf (int ,char*) ;
 int use_pager ;

__attribute__((used)) static void execv_dashed_external(const char **argv)
{
 struct child_process cmd = CHILD_PROCESS_INIT;
 int status;

 if (get_super_prefix())
  die(_("%s doesn't support --super-prefix"), argv[0]);

 if (use_pager == -1 && !is_builtin(argv[0]))
  use_pager = check_pager_config(argv[0]);
 commit_pager_choice();

 argv_array_pushf(&cmd.args, "git-%s", argv[0]);
 argv_array_pushv(&cmd.args, argv + 1);
 cmd.clean_on_exit = 1;
 cmd.wait_after_clean = 1;
 cmd.silent_exec_failure = 1;
 cmd.trace2_child_class = "dashed";

 trace2_cmd_name("_run_dashed_");





 trace_argv_printf(cmd.args.argv, "trace: exec:");







 status = run_command(&cmd);






 if (status >= 0)
  exit(status);
 else if (errno != ENOENT)
  exit(128);
}
