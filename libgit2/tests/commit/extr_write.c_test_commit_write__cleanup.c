
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int * branch ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * commit ;
 int git__free (int *) ;
 int git_commit_free (int *) ;
 int git_libgit2_opts (int ,int) ;
 int git_reference_free (int *) ;
 int * head ;
 int * head_old ;

void test_commit_write__cleanup(void)
{
 git_reference_free(head);
 head = ((void*)0);

 git_reference_free(branch);
 branch = ((void*)0);

 git_commit_free(commit);
 commit = ((void*)0);

 git__free(head_old);
 head_old = ((void*)0);

 cl_git_sandbox_cleanup();

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 1));
}
