
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submodule_parallel_fetch {int result; int oid_fetch_tasks_nr; struct fetch_task** oid_fetch_tasks; int oid_fetch_tasks_alloc; int changed_submodule_names; } ;
struct string_list_item {struct oid_array* util; } ;
struct strbuf {int dummy; } ;
struct oid_array {scalar_t__ nr; } ;
struct fetch_task {struct oid_array* commits; int repo; TYPE_1__* sub; } ;
struct TYPE_2__ {int name; } ;


 int ALLOC_GROW (struct fetch_task**,int,int ) ;
 int BUG (char*) ;
 int commit_missing_in_sub ;
 int fetch_task_release (struct fetch_task*) ;
 int oid_array_filter (struct oid_array*,int ,int ) ;
 struct string_list_item* string_list_lookup (int *,int ) ;

__attribute__((used)) static int fetch_finish(int retvalue, struct strbuf *err,
   void *cb, void *task_cb)
{
 struct submodule_parallel_fetch *spf = cb;
 struct fetch_task *task = task_cb;

 struct string_list_item *it;
 struct oid_array *commits;

 if (retvalue)







  spf->result = 1;

 if (!task || !task->sub)
  BUG("callback cookie bogus");


 if (task->commits)
  goto out;

 it = string_list_lookup(&spf->changed_submodule_names, task->sub->name);
 if (!it)

  goto out;

 commits = it->util;
 oid_array_filter(commits,
    commit_missing_in_sub,
    task->repo);


 if (commits->nr) {
  task->commits = commits;
  ALLOC_GROW(spf->oid_fetch_tasks,
      spf->oid_fetch_tasks_nr + 1,
      spf->oid_fetch_tasks_alloc);
  spf->oid_fetch_tasks[spf->oid_fetch_tasks_nr] = task;
  spf->oid_fetch_tasks_nr++;
  return 0;
 }

out:
 fetch_task_release(task);

 return 0;
}
