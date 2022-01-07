
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;


 int TEST_URL ;
 int * _repo ;
 int cl_assert_equal_sz (int ,int) ;
 int cl_git_pass (int ) ;
 int git_remote_create (int **,int *,char*,int ) ;
 int git_remote_free (int *) ;
 int git_remote_list (TYPE_1__*,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int *) ;
 int git_strarray_free (TYPE_1__*) ;

void test_remote_list__always_checks_disk_config(void)
{
 git_repository *repo;
 git_strarray remotes;
 git_remote *remote;

 cl_git_pass(git_repository_open(&repo, git_repository_path(_repo)));

 cl_git_pass(git_remote_list(&remotes, _repo));
 cl_assert_equal_sz(remotes.count, 1);
 git_strarray_free(&remotes);

 cl_git_pass(git_remote_create(&remote, _repo, "valid-name", TEST_URL));

 cl_git_pass(git_remote_list(&remotes, _repo));
 cl_assert_equal_sz(remotes.count, 2);
 git_strarray_free(&remotes);

 cl_git_pass(git_remote_list(&remotes, repo));
 cl_assert_equal_sz(remotes.count, 2);
 git_strarray_free(&remotes);

 git_repository_free(repo);
 git_remote_free(remote);
}
