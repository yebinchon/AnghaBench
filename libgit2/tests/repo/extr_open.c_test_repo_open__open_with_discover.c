
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert (int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open_ext (int **,char const*,int ,int *) ;
 int git_repository_path (int *) ;
 int git_repository_workdir (int *) ;
 int p_rename (char*,char*) ;

void test_repo_open__open_with_discover(void)
{
 static const char *variants[] = {
  "attr", "attr/", "attr/.git", "attr/.git/",
  "attr/sub", "attr/sub/", "attr/sub/sub", "attr/sub/sub/",
  ((void*)0)
 };
 git_repository *repo;
 const char **scan;

 cl_fixture_sandbox("attr");
 cl_git_pass(p_rename("attr/.gitted", "attr/.git"));

 for (scan = variants; *scan != ((void*)0); scan++) {
  cl_git_pass(git_repository_open_ext(&repo, *scan, 0, ((void*)0)));
  cl_assert(git__suffixcmp(git_repository_path(repo), "attr/.git/") == 0);
  cl_assert(git__suffixcmp(git_repository_workdir(repo), "attr/") == 0);
  git_repository_free(repo);
 }

 cl_fixture_cleanup("attr");
}
