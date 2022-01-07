
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_parallel_fetch {int command_line_option; int default_option; int quiet; char const* prefix; int result; int changed_submodule_names; int args; struct repository* r; } ;
struct repository {int worktree; } ;
struct argv_array {int argc; char** argv; } ;


 struct submodule_parallel_fetch SPF_INIT ;
 int argv_array_clear (int *) ;
 int argv_array_push (int *,char*) ;
 int calculate_changed_submodule_paths (struct repository*,int *) ;
 int die (char*) ;
 int fetch_finish ;
 int fetch_start_failure ;
 int free_submodules_oids (int *) ;
 int get_next_submodule ;
 scalar_t__ repo_read_index (struct repository*) ;
 int run_processes_parallel_tr2 (int,int ,int ,int ,struct submodule_parallel_fetch*,char*,char*) ;
 int string_list_sort (int *) ;

int fetch_populated_submodules(struct repository *r,
          const struct argv_array *options,
          const char *prefix, int command_line_option,
          int default_option,
          int quiet, int max_parallel_jobs)
{
 int i;
 struct submodule_parallel_fetch spf = SPF_INIT;

 spf.r = r;
 spf.command_line_option = command_line_option;
 spf.default_option = default_option;
 spf.quiet = quiet;
 spf.prefix = prefix;

 if (!r->worktree)
  goto out;

 if (repo_read_index(r) < 0)
  die("index file corrupt");

 argv_array_push(&spf.args, "fetch");
 for (i = 0; i < options->argc; i++)
  argv_array_push(&spf.args, options->argv[i]);
 argv_array_push(&spf.args, "--recurse-submodules-default");


 calculate_changed_submodule_paths(r, &spf.changed_submodule_names);
 string_list_sort(&spf.changed_submodule_names);
 run_processes_parallel_tr2(max_parallel_jobs,
       get_next_submodule,
       fetch_start_failure,
       fetch_finish,
       &spf,
       "submodule", "parallel/fetch");

 argv_array_clear(&spf.args);
out:
 free_submodules_oids(&spf.changed_submodule_names);
 return spf.result;
}
