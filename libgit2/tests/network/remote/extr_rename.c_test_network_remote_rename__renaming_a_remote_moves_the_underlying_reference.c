
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int _remote_name ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_rename__renaming_a_remote_moves_the_underlying_reference(void)
{
 git_reference *underlying;
 git_strarray problems = {0};

 cl_assert_equal_i(GIT_ENOTFOUND, git_reference_lookup(&underlying, _repo, "refs/remotes/just/renamed"));
 cl_git_pass(git_reference_lookup(&underlying, _repo, "refs/remotes/test/master"));
 git_reference_free(underlying);

 cl_git_pass(git_remote_rename(&problems, _repo, _remote_name, "just/renamed"));
 cl_assert_equal_i(0, problems.count);
 git_strarray_free(&problems);

 cl_assert_equal_i(GIT_ENOTFOUND, git_reference_lookup(&underlying, _repo, "refs/remotes/test/master"));
 cl_git_pass(git_reference_lookup(&underlying, _repo, "refs/remotes/just/renamed/master"));
 git_reference_free(underlying);
}
