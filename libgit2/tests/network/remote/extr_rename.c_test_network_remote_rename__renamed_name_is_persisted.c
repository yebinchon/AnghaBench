
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;


 int _remote_name ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_rename__renamed_name_is_persisted(void)
{
 git_remote *renamed;
 git_repository *another_repo;
 git_strarray problems = {0};

 cl_git_fail(git_remote_lookup(&renamed, _repo, "just/renamed"));

 cl_git_pass(git_remote_rename(&problems, _repo, _remote_name, "just/renamed"));
 cl_assert_equal_i(0, problems.count);
 git_strarray_free(&problems);

 cl_git_pass(git_repository_open(&another_repo, "testrepo.git"));
 cl_git_pass(git_remote_lookup(&renamed, _repo, "just/renamed"));

 git_remote_free(renamed);
 git_repository_free(another_repo);
}
