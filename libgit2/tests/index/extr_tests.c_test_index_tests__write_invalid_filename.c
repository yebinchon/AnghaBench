
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;
 int write_invalid_filename (int *,char*) ;

void test_index_tests__write_invalid_filename(void)
{
 git_repository *repo;

 p_mkdir("invalid", 0700);

 cl_git_pass(git_repository_init(&repo, "./invalid", 0));

 write_invalid_filename(repo, ".git/hello");
 write_invalid_filename(repo, ".GIT/hello");
 write_invalid_filename(repo, ".GiT/hello");
 write_invalid_filename(repo, "./.git/hello");
 write_invalid_filename(repo, "./foo");
 write_invalid_filename(repo, "./bar");
 write_invalid_filename(repo, "foo/../bar");

 git_repository_free(repo);

 cl_fixture_cleanup("invalid");
}
