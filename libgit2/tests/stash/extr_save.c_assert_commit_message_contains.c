
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;
typedef int git_commit ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_message (int *) ;
 int git_revparse_single (int **,int ,char const*) ;
 int repo ;
 int * strstr (int ,char const*) ;

__attribute__((used)) static void assert_commit_message_contains(const char *revision, const char *fragment)
{
 git_commit *commit;

 cl_git_pass(git_revparse_single((git_object**)&commit, repo, revision));

 cl_assert(strstr(git_commit_message(commit), fragment) != ((void*)0));

 git_commit_free(commit);
}
