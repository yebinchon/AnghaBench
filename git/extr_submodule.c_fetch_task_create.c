
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct fetch_task {int free_sub; scalar_t__ sub; } ;


 int free (struct fetch_task*) ;
 scalar_t__ get_non_gitmodules_submodule (char const*) ;
 int memset (struct fetch_task*,int ,int) ;
 int null_oid ;
 scalar_t__ submodule_from_path (struct repository*,int *,char const*) ;
 struct fetch_task* xmalloc (int) ;

__attribute__((used)) static struct fetch_task *fetch_task_create(struct repository *r,
         const char *path)
{
 struct fetch_task *task = xmalloc(sizeof(*task));
 memset(task, 0, sizeof(*task));

 task->sub = submodule_from_path(r, &null_oid, path);
 if (!task->sub) {





  task->sub = get_non_gitmodules_submodule(path);
  if (!task->sub) {
   free(task);
   return ((void*)0);
  }

  task->free_sub = 1;
 }

 return task;
}
