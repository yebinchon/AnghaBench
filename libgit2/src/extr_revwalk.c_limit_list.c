
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int hide_cb_payload; scalar_t__ (* hide_cb ) (int *,int ) ;} ;
typedef TYPE_1__ git_revwalk ;
struct TYPE_11__ {int time; int oid; scalar_t__ uninteresting; } ;
typedef TYPE_2__ git_commit_list_node ;
typedef int git_commit_list ;
struct TYPE_12__ {int * next; } ;


 int INT64_MAX ;
 int SLOP ;
 int add_parents_to_list (TYPE_1__*,TYPE_2__*,int **) ;
 int git_commit_list_free (int **) ;
 TYPE_6__* git_commit_list_insert (TYPE_2__*,int **) ;
 TYPE_2__* git_commit_list_pop (int **) ;
 int mark_parents_uninteresting (TYPE_2__*) ;
 int still_interesting (int *,int ,int) ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static int limit_list(git_commit_list **out, git_revwalk *walk, git_commit_list *commits)
{
 int error, slop = SLOP;
 int64_t time = INT64_MAX;
 git_commit_list *list = commits;
 git_commit_list *newlist = ((void*)0);
 git_commit_list **p = &newlist;

 while (list) {
  git_commit_list_node *commit = git_commit_list_pop(&list);

  if ((error = add_parents_to_list(walk, commit, &list)) < 0)
   return error;

  if (commit->uninteresting) {
   mark_parents_uninteresting(commit);

   slop = still_interesting(list, time, slop);
   if (slop)
    continue;

   break;
  }

  if (walk->hide_cb && walk->hide_cb(&commit->oid, walk->hide_cb_payload))
   continue;

  time = commit->time;
  p = &git_commit_list_insert(commit, p)->next;
 }

 git_commit_list_free(&list);
 *out = newlist;
 return 0;
}
