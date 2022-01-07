
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIRECTION_FETCH ;
 int GIT_ENOTFOUND ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_remote ;
 int g_repo_a ;
 int git_clone (int **,int ,char*,int *) ;
 int git_oid_equal (int *,int *) ;
 int git_reference_create (int **,int ,char*,int *,int,int *) ;
 int git_reference_free (int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_reference_remove (int ,char*) ;
 int git_remote_connect (int ,int ,int *,int *,int *) ;
 int git_remote_default_branch (int *,int ) ;
 int git_repository_detach_head (int ) ;
 int git_repository_free (int *) ;
 int git_repository_head_detached (int *) ;
 int git_repository_path (int ) ;

void test_network_remote_defaultbranch__detached_sharing_nonbranch_id(void)
{
 git_oid id, id_cloned;
 git_reference *ref;
 git_buf buf = GIT_BUF_INIT;
 git_repository *cloned_repo;

 cl_git_pass(git_reference_name_to_id(&id, g_repo_a, "HEAD"));
 cl_git_pass(git_repository_detach_head(g_repo_a));
 cl_git_pass(git_reference_remove(g_repo_a, "refs/heads/master"));
 cl_git_pass(git_reference_remove(g_repo_a, "refs/heads/not-good"));
 cl_git_pass(git_reference_create(&ref, g_repo_a, "refs/foo/bar", &id, 1, ((void*)0)));
 git_reference_free(ref);

 cl_git_pass(git_remote_connect(g_remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_git_fail_with(GIT_ENOTFOUND, git_remote_default_branch(&buf, g_remote));

 cl_git_pass(git_clone(&cloned_repo, git_repository_path(g_repo_a), "./local-detached", ((void*)0)));

 cl_assert(git_repository_head_detached(cloned_repo));
 cl_git_pass(git_reference_name_to_id(&id_cloned, g_repo_a, "HEAD"));
 cl_assert(git_oid_equal(&id, &id_cloned));

 git_repository_free(cloned_repo);
}
