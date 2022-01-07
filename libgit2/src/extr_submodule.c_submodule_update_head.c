
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int attr; } ;
typedef TYPE_1__ git_tree_entry ;
typedef int git_tree ;
struct TYPE_9__ {int flags; int path; int repo; } ;
typedef TYPE_2__ git_submodule ;


 int GIT_SUBMODULE_STATUS_IN_HEAD ;
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ;
 int git_error_clear () ;
 scalar_t__ git_repository_head_tree (int **,int ) ;
 scalar_t__ git_tree_entry_bypath (TYPE_1__**,int *,int ) ;
 int git_tree_entry_free (TYPE_1__*) ;
 int git_tree_entry_id (TYPE_1__*) ;
 int git_tree_free (int *) ;
 int submodule_update_from_head_data (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int submodule_update_head(git_submodule *submodule)
{
 git_tree *head = ((void*)0);
 git_tree_entry *te = ((void*)0);

 submodule->flags = submodule->flags &
  ~(GIT_SUBMODULE_STATUS_IN_HEAD |
    GIT_SUBMODULE_STATUS__HEAD_OID_VALID);


 if (git_repository_head_tree(&head, submodule->repo) < 0 ||
  git_tree_entry_bypath(&te, head, submodule->path) < 0)
  git_error_clear();
 else
  submodule_update_from_head_data(submodule, te->attr, git_tree_entry_id(te));

 git_tree_entry_free(te);
 git_tree_free(head);
 return 0;
}
