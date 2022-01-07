
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int cl_assert (int) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_path_exists (char*) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int p_mkdir (char*,int) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__untracked_skips_ignored(void)
{
 cl_git_append2file("stash/.gitignore", "bundle/vendor/\n");
 cl_must_pass(p_mkdir("stash/bundle", 0777));
 cl_must_pass(p_mkdir("stash/bundle/vendor", 0777));
 cl_git_mkfile("stash/bundle/vendor/blah", "contents\n");

 cl_assert(git_path_exists("stash/when"));
 cl_assert(git_path_exists("stash/just.ignore"));
 cl_assert(git_path_exists("stash/bundle/vendor/blah"));

 cl_git_pass(git_stash_save(
  &stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));

 cl_assert(!git_path_exists("stash/when"));
 cl_assert(git_path_exists("stash/bundle/vendor/blah"));
 cl_assert(git_path_exists("stash/just.ignore"));
}
