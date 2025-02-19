
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; char** strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;


 int cl_fixture_cleanup (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_remote_create (int **,int *,char*,char*) ;
 int git_remote_free (int *) ;
 int git_remote_push (int *,TYPE_1__*,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;

void test_network_remote_local__push_delete(void)
{
 git_repository *src_repo;
 git_repository *dst_repo;
 git_remote *remote;
 git_reference *ref;
 char *spec_push[] = { "refs/heads/master" };
 char *spec_delete[] = { ":refs/heads/master" };
 git_strarray specs = {
  spec_push,
  1,
 };

 src_repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_init(&dst_repo, "target.git", 1));

 cl_git_pass(git_remote_create(&remote, src_repo, "origin", "./target.git"));


 cl_git_pass(git_remote_push(remote, &specs, ((void*)0)));
 cl_git_pass(git_reference_lookup(&ref, dst_repo, "refs/heads/master"));
 git_reference_free(ref);

 specs.strings = spec_delete;
 cl_git_pass(git_remote_push(remote, &specs, ((void*)0)));
 cl_git_fail(git_reference_lookup(&ref, dst_repo, "refs/heads/master"));

 git_remote_free(remote);
 git_repository_free(dst_repo);
 cl_fixture_cleanup("target.git");
 cl_git_sandbox_cleanup();
}
