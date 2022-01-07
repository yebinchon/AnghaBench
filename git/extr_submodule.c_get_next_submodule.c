
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int argv; } ;
struct submodule_parallel_fetch {size_t count; int result; int oid_fetch_tasks_nr; TYPE_2__ args; int prefix; struct fetch_task** oid_fetch_tasks; int quiet; TYPE_4__* r; int changed_submodule_names; } ;
struct strbuf {char* buf; } ;
struct fetch_task {int commits; TYPE_3__* repo; TYPE_5__* sub; } ;
struct child_process {int git_cmd; int args; int dir; int env_array; } ;
struct cache_entry {int name; int ce_mode; } ;
struct TYPE_12__ {int path; int name; } ;
struct TYPE_11__ {TYPE_1__* index; } ;
struct TYPE_10__ {int gitdir; } ;
struct TYPE_8__ {size_t cache_nr; struct cache_entry** cache; } ;






 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISGITLINK (int ) ;
 int _ (char*) ;
 int append_oid_to_argv ;
 int argv_array_init (int *) ;
 int argv_array_push (int *,char const*) ;
 int argv_array_pushv (int *,int ) ;
 int child_process_init (struct child_process*) ;
 struct fetch_task* fetch_task_create (TYPE_4__*,int ) ;
 int fetch_task_release (struct fetch_task*) ;
 int free (struct fetch_task*) ;
 int get_fetch_recurse_config (TYPE_5__*,struct submodule_parallel_fetch*) ;
 TYPE_3__* get_submodule_repo_for (TYPE_4__*,TYPE_5__*) ;
 int is_empty_dir (int ) ;
 int oid_array_for_each_unique (int ,int ,int *) ;
 int prepare_submodule_repo_env_in_gitdir (int *) ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 int strbuf_release (struct strbuf*) ;
 int string_list_lookup (int *,int ) ;

__attribute__((used)) static int get_next_submodule(struct child_process *cp,
         struct strbuf *err, void *data, void **task_cb)
{
 struct submodule_parallel_fetch *spf = data;

 for (; spf->count < spf->r->index->cache_nr; spf->count++) {
  const struct cache_entry *ce = spf->r->index->cache[spf->count];
  const char *default_argv;
  struct fetch_task *task;

  if (!S_ISGITLINK(ce->ce_mode))
   continue;

  task = fetch_task_create(spf->r, ce->name);
  if (!task)
   continue;

  switch (get_fetch_recurse_config(task->sub, spf))
  {
  default:
  case 131:
  case 128:
   if (!task->sub ||
       !string_list_lookup(
     &spf->changed_submodule_names,
     task->sub->name))
    continue;
   default_argv = "on-demand";
   break;
  case 129:
   default_argv = "yes";
   break;
  case 130:
   continue;
  }

  task->repo = get_submodule_repo_for(spf->r, task->sub);
  if (task->repo) {
   struct strbuf submodule_prefix = STRBUF_INIT;
   child_process_init(cp);
   cp->dir = task->repo->gitdir;
   prepare_submodule_repo_env_in_gitdir(&cp->env_array);
   cp->git_cmd = 1;
   if (!spf->quiet)
    strbuf_addf(err, "Fetching submodule %s%s\n",
         spf->prefix, ce->name);
   argv_array_init(&cp->args);
   argv_array_pushv(&cp->args, spf->args.argv);
   argv_array_push(&cp->args, default_argv);
   argv_array_push(&cp->args, "--submodule-prefix");

   strbuf_addf(&submodule_prefix, "%s%s/",
             spf->prefix,
             task->sub->path);
   argv_array_push(&cp->args, submodule_prefix.buf);

   spf->count++;
   *task_cb = task;

   strbuf_release(&submodule_prefix);
   return 1;
  } else {

   fetch_task_release(task);
   free(task);





   if (S_ISGITLINK(ce->ce_mode) &&
       !is_empty_dir(ce->name)) {
    spf->result = 1;
    strbuf_addf(err,
         _("Could not access submodule '%s'"),
         ce->name);
   }
  }
 }

 if (spf->oid_fetch_tasks_nr) {
  struct fetch_task *task =
   spf->oid_fetch_tasks[spf->oid_fetch_tasks_nr - 1];
  struct strbuf submodule_prefix = STRBUF_INIT;
  spf->oid_fetch_tasks_nr--;

  strbuf_addf(&submodule_prefix, "%s%s/",
       spf->prefix, task->sub->path);

  child_process_init(cp);
  prepare_submodule_repo_env_in_gitdir(&cp->env_array);
  cp->git_cmd = 1;
  cp->dir = task->repo->gitdir;

  argv_array_init(&cp->args);
  argv_array_pushv(&cp->args, spf->args.argv);
  argv_array_push(&cp->args, "on-demand");
  argv_array_push(&cp->args, "--submodule-prefix");
  argv_array_push(&cp->args, submodule_prefix.buf);


  argv_array_push(&cp->args, "origin");
  oid_array_for_each_unique(task->commits,
       append_oid_to_argv, &cp->args);

  *task_cb = task;
  strbuf_release(&submodule_prefix);
  return 1;
 }

 return 0;
}
