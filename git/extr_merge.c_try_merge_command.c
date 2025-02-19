
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int argv_array_pushf (struct argv_array*,char*,char const*) ;
 int die (int ) ;
 int discard_index (int ) ;
 char const* merge_argument (int ) ;
 scalar_t__ repo_read_index (struct repository*) ;
 int resolve_undo_clear_index (int ) ;
 int run_command_v_opt (int ,int ) ;

int try_merge_command(struct repository *r,
        const char *strategy, size_t xopts_nr,
        const char **xopts, struct commit_list *common,
        const char *head_arg, struct commit_list *remotes)
{
 struct argv_array args = ARGV_ARRAY_INIT;
 int i, ret;
 struct commit_list *j;

 argv_array_pushf(&args, "merge-%s", strategy);
 for (i = 0; i < xopts_nr; i++)
  argv_array_pushf(&args, "--%s", xopts[i]);
 for (j = common; j; j = j->next)
  argv_array_push(&args, merge_argument(j->item));
 argv_array_push(&args, "--");
 argv_array_push(&args, head_arg);
 for (j = remotes; j; j = j->next)
  argv_array_push(&args, merge_argument(j->item));

 ret = run_command_v_opt(args.argv, RUN_GIT_CMD);
 argv_array_clear(&args);

 discard_index(r->index);
 if (repo_read_index(r) < 0)
  die(_("failed to read the cache"));
 resolve_undo_clear_index(r->index);

 return ret;
}
