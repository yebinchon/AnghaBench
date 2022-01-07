
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; int mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_add_from_buffer (int *,TYPE_2__*,char*,int) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_index_is_dirty (int *) ;
 int git_index_read (int *,int) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;

void test_index_tests__dirty_and_clean(void)
{
 git_repository *repo;
 git_index *index;
 git_index_entry entry = {{0}};


 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));
 cl_git_pass(git_repository_index(&index, repo));

 cl_assert(git_index_entrycount(index) == 0);
 cl_assert(!git_index_is_dirty(index));


 entry.mode = GIT_FILEMODE_BLOB;
 entry.path = "test.txt";
 cl_git_pass(git_index_add_from_buffer(index, &entry, "Hi.\n", 4));
 cl_assert(git_index_entrycount(index) == 1);
 cl_assert(git_index_is_dirty(index));


 cl_git_pass(git_index_write(index));
 cl_assert(!git_index_is_dirty(index));


 cl_git_pass(git_index_remove_bypath(index, "test.txt"));
 cl_assert(git_index_entrycount(index) == 0);
 cl_assert(git_index_is_dirty(index));


 cl_git_pass(git_index_write(index));
 cl_assert(!git_index_is_dirty(index));


 cl_git_pass(git_index_read(index, 0));
 cl_assert(!git_index_is_dirty(index));


 cl_git_pass(git_index_add_from_buffer(index, &entry, "Hi.\n", 4));
 cl_assert(git_index_entrycount(index) == 1);
 cl_assert(git_index_is_dirty(index));

 cl_git_pass(git_index_read(index, 0));
 cl_assert(git_index_is_dirty(index));


 cl_git_pass(git_index_read(index, 1));
 cl_assert(!git_index_is_dirty(index));

 git_index_free(index);
 git_repository_free(repo);
}
