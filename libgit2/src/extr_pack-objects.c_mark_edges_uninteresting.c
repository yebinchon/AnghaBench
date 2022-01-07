
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int repo; } ;
typedef TYPE_2__ git_packbuilder ;
struct TYPE_9__ {TYPE_1__* item; struct TYPE_9__* next; } ;
typedef TYPE_3__ git_commit_list ;
typedef int git_commit ;
struct TYPE_7__ {int oid; int uninteresting; } ;


 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree_id (int *) ;
 int mark_tree_uninteresting (TYPE_2__*,int ) ;

__attribute__((used)) static int mark_edges_uninteresting(git_packbuilder *pb, git_commit_list *commits)
{
 int error;
 git_commit_list *list;
 git_commit *commit;

 for (list = commits; list; list = list->next) {
  if (!list->item->uninteresting)
   continue;

  if ((error = git_commit_lookup(&commit, pb->repo, &list->item->oid)) < 0)
   return error;

  error = mark_tree_uninteresting(pb, git_commit_tree_id(commit));
  git_commit_free(commit);

  if (error < 0)
   return error;
 }

 return 0;
}
