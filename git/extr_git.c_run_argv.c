
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct strbuf {int buf; } ;
struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 scalar_t__ ENOENT ;
 int RUN_CLEAN_ON_EXIT ;
 int RUN_SILENT_EXEC_FAILURE ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int _ (char*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int commit_pager_choice () ;
 int die (char*,char const*,...) ;
 scalar_t__ errno ;
 int execv_dashed_external (char const**) ;
 int exit (int) ;
 scalar_t__ get_builtin (char const*) ;
 scalar_t__ get_super_prefix () ;
 int handle_alias (int*,char const***) ;
 int handle_builtin (int,char const**) ;
 int run_command_v_opt_tr2 (int ,int,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int string_list_append (struct string_list*,char const*) ;
 int string_list_clear (struct string_list*,int ) ;
 int trace2_cmd_name (char*) ;
 int trace_argv_printf (int ,char*) ;
 struct string_list_item* unsorted_string_list_lookup (struct string_list*,char const*) ;

__attribute__((used)) static int run_argv(int *argcp, const char ***argv)
{
 int done_alias = 0;
 struct string_list cmd_list = STRING_LIST_INIT_NODUP;
 struct string_list_item *seen;

 while (1) {
  if (!done_alias)
   handle_builtin(*argcp, *argv);
  else if (get_builtin(**argv)) {
   struct argv_array args = ARGV_ARRAY_INIT;
   int i;
   trace2_cmd_name("_run_git_alias_");

   if (get_super_prefix())
    die("%s doesn't support --super-prefix", **argv);

   commit_pager_choice();

   argv_array_push(&args, "git");
   for (i = 0; i < *argcp; i++)
    argv_array_push(&args, (*argv)[i]);

   trace_argv_printf(args.argv, "trace: exec:");





   i = run_command_v_opt_tr2(args.argv, RUN_SILENT_EXEC_FAILURE |
        RUN_CLEAN_ON_EXIT, "git_alias");
   if (i >= 0 || errno != ENOENT)
    exit(i);
   die("could not execute builtin %s", **argv);
  }


  execv_dashed_external(*argv);

  seen = unsorted_string_list_lookup(&cmd_list, *argv[0]);
  if (seen) {
   int i;
   struct strbuf sb = STRBUF_INIT;
   for (i = 0; i < cmd_list.nr; i++) {
    struct string_list_item *item = &cmd_list.items[i];

    strbuf_addf(&sb, "\n  %s", item->string);
    if (item == seen)
     strbuf_addstr(&sb, " <==");
    else if (i == cmd_list.nr - 1)
     strbuf_addstr(&sb, " ==>");
   }
   die(_("alias loop detected: expansion of '%s' does"
         " not terminate:%s"), cmd_list.items[0].string, sb.buf);
  }

  string_list_append(&cmd_list, *argv[0]);






  if (!handle_alias(argcp, argv))
   break;
  done_alias = 1;
 }

 string_list_clear(&cmd_list, 0);

 return done_alias;
}
