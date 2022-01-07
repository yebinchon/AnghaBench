
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;
 int write_invalid_filename (int *,char*) ;

void test_index_tests__honors_protect_filesystems(void)
{
 git_repository *repo;

 p_mkdir("invalid", 0700);

 cl_git_pass(git_repository_init(&repo, "./invalid", 0));

 cl_repo_set_bool(repo, "core.protectHFS", 1);
 cl_repo_set_bool(repo, "core.protectNTFS", 1);

 write_invalid_filename(repo, ".git./hello");
 write_invalid_filename(repo, ".git\xe2\x80\xad/hello");
 write_invalid_filename(repo, "git~1/hello");
 write_invalid_filename(repo, ".git\xe2\x81\xaf/hello");

 git_repository_free(repo);

 cl_fixture_cleanup("invalid");
}
