
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int add_invalid_filename (int *,char*) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_path_exists (char*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;

void test_index_tests__add_invalid_filename(void)
{
 git_repository *repo;

 p_mkdir("invalid", 0700);

 cl_git_pass(git_repository_init(&repo, "./invalid", 0));
 cl_must_pass(p_mkdir("./invalid/subdir", 0777));


 if (!git_path_exists("./invalid/.GIT"))
  cl_must_pass(p_mkdir("./invalid/.GIT", 0777));
 if (!git_path_exists("./invalid/.GiT"))
  cl_must_pass(p_mkdir("./invalid/.GiT", 0777));

 add_invalid_filename(repo, ".git/hello");
 add_invalid_filename(repo, ".GIT/hello");
 add_invalid_filename(repo, ".GiT/hello");
 add_invalid_filename(repo, "./.git/hello");
 add_invalid_filename(repo, "./foo");
 add_invalid_filename(repo, "./bar");
 add_invalid_filename(repo, "subdir/../bar");

 git_repository_free(repo);

 cl_fixture_cleanup("invalid");
}
