
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_RESET_HARD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 scalar_t__ git_path_exists (char*) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;
 int * target ;
 int unmerged_index_init (int *,int) ;

void test_reset_hard__resetting_reverts_unmerged(void)
{
 git_index *index;
 int entries;



 for (entries = 1; entries < 8; entries++) {
  cl_git_pass(git_repository_index(&index, repo));

  unmerged_index_init(index, entries);
  cl_git_pass(git_index_write(index));

  cl_git_pass(git_revparse_single(&target, repo, "26a125e"));
  cl_git_pass(git_reset(repo, target, GIT_RESET_HARD, ((void*)0)));

  cl_assert(git_path_exists("status/conflicting_file") == 0);

  git_object_free(target);
  target = ((void*)0);

  git_index_free(index);
 }
}
