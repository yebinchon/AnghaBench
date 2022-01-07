
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_mkfile (char*,int *) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char*,int ) ;
 int git_index_read (int *,int) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_remove_directory (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;

void test_index_tests__remove_directory(void)
{
 git_repository *repo;
 git_index *index;

 p_mkdir("index_test", 0770);

 cl_git_pass(git_repository_init(&repo, "index_test", 0));
 cl_git_pass(git_repository_index(&index, repo));
 cl_assert_equal_i(0, (int)git_index_entrycount(index));

 p_mkdir("index_test/a", 0770);
 cl_git_mkfile("index_test/a/1.txt", ((void*)0));
 cl_git_mkfile("index_test/a/2.txt", ((void*)0));
 cl_git_mkfile("index_test/a/3.txt", ((void*)0));
 cl_git_mkfile("index_test/b.txt", ((void*)0));

 cl_git_pass(git_index_add_bypath(index, "a/1.txt"));
 cl_git_pass(git_index_add_bypath(index, "a/2.txt"));
 cl_git_pass(git_index_add_bypath(index, "a/3.txt"));
 cl_git_pass(git_index_add_bypath(index, "b.txt"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_read(index, 1));
 cl_assert_equal_i(4, (int)git_index_entrycount(index));
 cl_assert(git_index_get_bypath(index, "a/1.txt", 0) != ((void*)0));
 cl_assert(git_index_get_bypath(index, "a/2.txt", 0) != ((void*)0));
 cl_assert(git_index_get_bypath(index, "b.txt", 0) != ((void*)0));

 cl_git_pass(git_index_remove(index, "a/1.txt", 0));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_read(index, 1));
 cl_assert_equal_i(3, (int)git_index_entrycount(index));
 cl_assert(git_index_get_bypath(index, "a/1.txt", 0) == ((void*)0));
 cl_assert(git_index_get_bypath(index, "a/2.txt", 0) != ((void*)0));
 cl_assert(git_index_get_bypath(index, "b.txt", 0) != ((void*)0));

 cl_git_pass(git_index_remove_directory(index, "a", 0));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_index_read(index, 1));
 cl_assert_equal_i(1, (int)git_index_entrycount(index));
 cl_assert(git_index_get_bypath(index, "a/1.txt", 0) == ((void*)0));
 cl_assert(git_index_get_bypath(index, "a/2.txt", 0) == ((void*)0));
 cl_assert(git_index_get_bypath(index, "b.txt", 0) != ((void*)0));

 git_index_free(index);
 git_repository_free(repo);
 cl_fixture_cleanup("index_test");
}
