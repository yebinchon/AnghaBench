
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**,char const*) ;int cmd; } ;
struct TYPE_4__ {scalar_t__ have_repository; } ;
struct TYPE_3__ {int index; } ;


 int DELAY_PAGER_CONFIG ;
 int NEED_WORK_TREE ;
 int RUN_SETUP ;
 int RUN_SETUP_GENTLY ;
 int SUPPORT_SUPER_PREFIX ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int USE_PAGER ;
 int _ (char*) ;
 int check_pager_config (int ) ;
 int commit_pager_choice () ;
 int die (int ,...) ;
 int die_errno (int ) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int fileno (int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ get_super_prefix () ;
 char* setup_git_directory () ;
 char* setup_git_directory_gently (int*) ;
 int setup_work_tree () ;
 TYPE_2__* startup_info ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int stub1 (int,char const**,char const*) ;
 TYPE_1__* the_repository ;
 int trace2_cmd_list_config () ;
 int trace2_cmd_name (int ) ;
 int trace_argv_printf (char const**,char*) ;
 int trace_repo_setup (char const*) ;
 int use_pager ;
 int validate_cache_entries (int ) ;

__attribute__((used)) static int run_builtin(struct cmd_struct *p, int argc, const char **argv)
{
 int status, help;
 struct stat st;
 const char *prefix;

 prefix = ((void*)0);
 help = argc == 2 && !strcmp(argv[1], "-h");
 if (!help) {
  if (p->option & RUN_SETUP)
   prefix = setup_git_directory();
  else if (p->option & RUN_SETUP_GENTLY) {
   int nongit_ok;
   prefix = setup_git_directory_gently(&nongit_ok);
  }

  if (use_pager == -1 && p->option & (RUN_SETUP | RUN_SETUP_GENTLY) &&
      !(p->option & DELAY_PAGER_CONFIG))
   use_pager = check_pager_config(p->cmd);
  if (use_pager == -1 && p->option & USE_PAGER)
   use_pager = 1;

  if ((p->option & (RUN_SETUP | RUN_SETUP_GENTLY)) &&
      startup_info->have_repository)
   trace_repo_setup(prefix);
 }
 commit_pager_choice();

 if (!help && get_super_prefix()) {
  if (!(p->option & SUPPORT_SUPER_PREFIX))
   die(_("%s doesn't support --super-prefix"), p->cmd);
 }

 if (!help && p->option & NEED_WORK_TREE)
  setup_work_tree();

 trace_argv_printf(argv, "trace: built-in: git");
 trace2_cmd_name(p->cmd);
 trace2_cmd_list_config();

 validate_cache_entries(the_repository->index);
 status = p->fn(argc, argv, prefix);
 validate_cache_entries(the_repository->index);

 if (status)
  return status;


 if (fstat(fileno(stdout), &st))
  return 0;

 if (S_ISFIFO(st.st_mode) || S_ISSOCK(st.st_mode))
  return 0;


 if (fflush(stdout))
  die_errno(_("write failure on standard output"));
 if (ferror(stdout))
  die(_("unknown write failure on standard output"));
 if (fclose(stdout))
  die_errno(_("close failed on standard output"));
 return 0;
}
