
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_index ;


 int GIT_STASH_INCLUDE_UNTRACKED ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_path_exists (char*) ;
 int git_repository_index (int **,int ) ;
 int git_stash_save (int *,int ,int ,char*,int ) ;
 int repo ;
 int signature ;

__attribute__((used)) static void push_three_states(void)
{
 git_oid oid;
 git_index *index;

 cl_git_mkfile("stash/zero.txt", "content\n");
 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "zero.txt"));
 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Initial commit");
 cl_assert(git_path_exists("stash/zero.txt"));
 git_index_free(index);

 cl_git_mkfile("stash/one.txt", "content\n");
 cl_git_pass(git_stash_save(
  &oid, repo, signature, "First", GIT_STASH_INCLUDE_UNTRACKED));
 cl_assert(!git_path_exists("stash/one.txt"));
 cl_assert(git_path_exists("stash/zero.txt"));

 cl_git_mkfile("stash/two.txt", "content\n");
 cl_git_pass(git_stash_save(
  &oid, repo, signature, "Second", GIT_STASH_INCLUDE_UNTRACKED));
 cl_assert(!git_path_exists("stash/two.txt"));
 cl_assert(git_path_exists("stash/zero.txt"));

 cl_git_mkfile("stash/three.txt", "content\n");
 cl_git_pass(git_stash_save(
  &oid, repo, signature, "Third", GIT_STASH_INCLUDE_UNTRACKED));
 cl_assert(!git_path_exists("stash/three.txt"));
 cl_assert(git_path_exists("stash/zero.txt"));
}
