
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_UNUSED (void*) ;
 int REFSPEC ;
 int cl_git_pass (int ) ;
 int git_remote_create_with_fetchspec (int **,int *,char const*,char const*,int ) ;

__attribute__((used)) static int remote_single_branch(git_remote **out, git_repository *repo, const char *name, const char *url, void *payload)
{
 GIT_UNUSED(payload);

 cl_git_pass(git_remote_create_with_fetchspec(out, repo, name, url, REFSPEC));

 return 0;
}
