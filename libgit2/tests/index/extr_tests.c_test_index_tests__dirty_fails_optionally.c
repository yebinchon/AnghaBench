
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; void* mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_EINDEXDIRTY ;
 void* GIT_FILEMODE_BLOB ;
 int GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_checkout_head (int *,int *) ;
 int git_index_add_from_buffer (int *,TYPE_2__*,char*,int) ;
 int git_index_free (int *) ;
 int git_index_is_dirty (int *) ;
 int git_libgit2_opts (int ,int) ;
 int git_repository_index (int **,int *) ;

void test_index_tests__dirty_fails_optionally(void)
{
 git_repository *repo;
 git_index *index;
 git_index_entry entry = {{0}};


 repo = cl_git_sandbox_init("testrepo");
 cl_git_pass(git_repository_index(&index, repo));


 entry.mode = GIT_FILEMODE_BLOB;
 entry.path = "test.txt";
 cl_git_pass(git_index_add_from_buffer(index, &entry, "Hi.\n", 4));
 cl_assert(git_index_is_dirty(index));

 cl_git_pass(git_checkout_head(repo, ((void*)0)));


 entry.mode = GIT_FILEMODE_BLOB;
 entry.path = "test.txt";
 cl_git_pass(git_index_add_from_buffer(index, &entry, "Hi.\n", 4));
 cl_assert(git_index_is_dirty(index));

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY, 1));
 cl_git_fail_with(GIT_EINDEXDIRTY, git_checkout_head(repo, ((void*)0)));

 git_index_free(index);
 cl_git_sandbox_cleanup();
}
