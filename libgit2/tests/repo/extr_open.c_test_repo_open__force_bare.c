
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_REPOSITORY_OPEN_BARE ;
 int GIT_REPOSITORY_OPEN_CROSS_FS ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_repository_free (int *) ;
 int git_repository_is_bare (int *) ;
 int git_repository_open (int **,char*) ;
 int git_repository_open_bare (int **,char*) ;
 int git_repository_open_ext (int **,char*,int,int *) ;
 int make_gitlink_dir (char*,char*) ;
 int p_mkdir (char*,int) ;

void test_repo_open__force_bare(void)
{

 git_repository *repo = cl_git_sandbox_init("empty_standard_repo");
 git_repository *barerepo;

 make_gitlink_dir("alternate", "gitdir: ../empty_standard_repo/.git");

 cl_assert(!git_repository_is_bare(repo));

 cl_git_pass(git_repository_open(&barerepo, "alternate"));
 cl_assert(!git_repository_is_bare(barerepo));
 git_repository_free(barerepo);

 cl_git_pass(git_repository_open_bare(
  &barerepo, "empty_standard_repo/.git"));
 cl_assert(git_repository_is_bare(barerepo));
 git_repository_free(barerepo);

 cl_git_fail(git_repository_open_bare(&barerepo, "alternate/.git"));

 cl_git_pass(git_repository_open_ext(
  &barerepo, "alternate/.git", GIT_REPOSITORY_OPEN_BARE, ((void*)0)));
 cl_assert(git_repository_is_bare(barerepo));
 git_repository_free(barerepo);

 cl_git_pass(p_mkdir("empty_standard_repo/subdir", 0777));
 cl_git_mkfile("empty_standard_repo/subdir/something.txt", "something");

 cl_git_fail(git_repository_open_bare(
  &barerepo, "empty_standard_repo/subdir"));

 cl_git_pass(git_repository_open_ext(
  &barerepo, "empty_standard_repo/subdir", GIT_REPOSITORY_OPEN_BARE, ((void*)0)));
 cl_assert(git_repository_is_bare(barerepo));
 git_repository_free(barerepo);

 cl_git_pass(p_mkdir("alternate/subdir", 0777));
 cl_git_pass(p_mkdir("alternate/subdir/sub2", 0777));
 cl_git_mkfile("alternate/subdir/sub2/something.txt", "something");

 cl_git_fail(git_repository_open_bare(&barerepo, "alternate/subdir/sub2"));

 cl_git_pass(git_repository_open_ext(
  &barerepo, "alternate/subdir/sub2",
  GIT_REPOSITORY_OPEN_BARE|GIT_REPOSITORY_OPEN_CROSS_FS, ((void*)0)));
 cl_assert(git_repository_is_bare(barerepo));
 git_repository_free(barerepo);
}
