
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository_init_options ;


 int GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int _repo ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cleanup_repository (char*) ;
 int git__suffixcmp (int ,char*) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_repository_init_ext (int *,char*,int *) ;
 int git_repository_is_bare (int ) ;
 int git_repository_is_empty (int ) ;
 int git_repository_path (int ) ;
 int git_repository_workdir (int ) ;

void test_repo_init__extended_0(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;


 cl_git_fail(git_repository_init_ext(&_repo, "extended", &opts));


 cl_git_pass(git_futils_mkdir("extended", 0775, 0));
 cl_git_pass(git_repository_init_ext(&_repo, "extended", &opts));

 cl_assert(!git__suffixcmp(git_repository_workdir(_repo), "/extended/"));
 cl_assert(!git__suffixcmp(git_repository_path(_repo), "/extended/.git/"));
 cl_assert(!git_repository_is_bare(_repo));
 cl_assert(git_repository_is_empty(_repo));

 cleanup_repository("extended");
}
