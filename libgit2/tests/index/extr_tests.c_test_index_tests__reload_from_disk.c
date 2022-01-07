
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_9__ {int on_disk; int index_file_path; } ;
typedef TYPE_1__ git_index ;


 int GIT_MKDIR_PATH ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_myrepo ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_index_add_bypath (TYPE_1__*,char*) ;
 int git_index_entrycount (TYPE_1__*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,int ) ;
 int git_index_read (TYPE_1__*,int) ;
 int git_index_write (TYPE_1__*) ;
 int git_repository_free (int *) ;
 int git_repository_index (TYPE_1__**,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_unlink (int ) ;

void test_index_tests__reload_from_disk(void)
{
 git_repository *repo;
 git_index *read_index;
 git_index *write_index;

 cl_set_cleanup(&cleanup_myrepo, ((void*)0));

 cl_git_pass(git_futils_mkdir("./myrepo", 0777, GIT_MKDIR_PATH));
 cl_git_mkfile("./myrepo/a.txt", "a\n");
 cl_git_mkfile("./myrepo/b.txt", "b\n");

 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));
 cl_git_pass(git_repository_index(&write_index, repo));
 cl_assert_equal_i(0, write_index->on_disk);

 cl_git_pass(git_index_open(&read_index, write_index->index_file_path));
 cl_assert_equal_i(0, read_index->on_disk);


 cl_git_pass(git_index_add_bypath(write_index, "a.txt"));
 cl_git_pass(git_index_add_bypath(write_index, "b.txt"));

 cl_assert_equal_sz(2, git_index_entrycount(write_index));


 cl_git_pass(git_index_write(write_index));
 cl_assert_equal_i(1, write_index->on_disk);


 cl_assert_equal_sz(0, git_index_entrycount(read_index));

 cl_git_pass(git_index_read(read_index, 1));
 cl_assert_equal_i(1, read_index->on_disk);

 cl_assert_equal_sz(2, git_index_entrycount(read_index));


 cl_git_pass(p_unlink(write_index->index_file_path));


 cl_git_pass(git_index_read(read_index, 1));
 cl_assert_equal_i(0, read_index->on_disk);
 cl_assert_equal_sz(0, git_index_entrycount(read_index));

 git_index_free(read_index);
 git_index_free(write_index);
 git_repository_free(repo);
}
