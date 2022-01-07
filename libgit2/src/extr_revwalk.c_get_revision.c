
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int limited; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_commit_list_node ;
typedef int git_commit_list ;


 int GIT_ITEROVER ;
 int add_parents_to_list (TYPE_1__*,int *,int **) ;
 int * git_commit_list_pop (int **) ;
 int git_error_clear () ;

__attribute__((used)) static int get_revision(git_commit_list_node **out, git_revwalk *walk, git_commit_list **list)
{
 int error;
 git_commit_list_node *commit;

 commit = git_commit_list_pop(list);
 if (!commit) {
  git_error_clear();
  return GIT_ITEROVER;
 }





 if (!walk->limited) {
  if ((error = add_parents_to_list(walk, commit, list)) < 0)
   return error;
 }

 *out = commit;
 return 0;
}
