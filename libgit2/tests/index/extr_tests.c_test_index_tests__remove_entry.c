
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_mkfile (char*,int *) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char*,int ) ;
 int git_index_read (int *,int) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;

void test_index_tests__remove_entry(void)
{
 git_repository *repo;
 git_index *index;

 p_mkdir("index_test", 0770);

 cl_git_pass(git_repository_init(&repo, "index_test", 0));
 cl_git_pass(git_repository_index(&index, repo));
 cl_assert(git_index_entrycount(index) == 0);

 cl_git_mkfile("index_test/hello", ((void*)0));
 cl_git_pass(git_index_add_bypath(index, "hello"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_read(index, 1));
 cl_assert(git_index_entrycount(index) == 1);
 cl_assert(git_index_get_bypath(index, "hello", 0) != ((void*)0));

 cl_git_pass(git_index_remove(index, "hello", 0));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_read(index, 1));
 cl_assert(git_index_entrycount(index) == 0);
 cl_assert(git_index_get_bypath(index, "hello", 0) == ((void*)0));

 git_index_free(index);
 git_repository_free(repo);
 cl_fixture_cleanup("index_test");
}
