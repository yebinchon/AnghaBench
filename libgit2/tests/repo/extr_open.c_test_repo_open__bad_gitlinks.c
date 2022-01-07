
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_futils_mkdir_r (char*,int) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_repository_open_ext (int **,char*,int ,int *) ;
 int make_gitlink_dir (char*,char const*) ;
 int p_mkdir (char*,int) ;

void test_repo_open__bad_gitlinks(void)
{
 git_repository *repo;
 static const char *bad_links[] = {
  "garbage\n", "gitdir", "gitdir:\n", "gitdir: foobar",
  "gitdir: ../invalid", "gitdir: ../invalid2",
  "gitdir: ../attr/.git with extra stuff",
  ((void*)0)
 };
 const char **scan;

 cl_git_sandbox_init("attr");

 cl_git_pass(p_mkdir("invalid", 0777));
 cl_git_pass(git_futils_mkdir_r("invalid2/.git", 0777));

 for (scan = bad_links; *scan != ((void*)0); scan++) {
  make_gitlink_dir("alternate", *scan);
  cl_git_fail(git_repository_open_ext(&repo, "alternate", 0, ((void*)0)));
 }

 git_futils_rmdir_r("invalid", ((void*)0), GIT_RMDIR_REMOVE_FILES);
 git_futils_rmdir_r("invalid2", ((void*)0), GIT_RMDIR_REMOVE_FILES);
}
