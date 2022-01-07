
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int new_entry ;
struct TYPE_7__ {char* path; void* mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 void* GIT_FILEMODE_BLOB ;
 void* GIT_FILEMODE_BLOB_EXECUTABLE ;
 void* GIT_FILEMODE_COMMIT ;
 void* GIT_FILEMODE_LINK ;
 void* GIT_FILEMODE_TREE ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (void*,void*) ;
 int cl_assert_equal_p (int *,TYPE_1__*) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add_from_buffer (int *,TYPE_1__*,char const*,int ) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_repository_index (int **,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

void test_index_filemodes__frombuffer_requires_files(void)
{
 git_index *index;
 git_index_entry new_entry;
 const git_index_entry *ret_entry;
 const char *content = "hey there\n";

 memset(&new_entry, 0, sizeof(new_entry));
 cl_git_pass(git_repository_index(&index, g_repo));


 new_entry.path = "dummy-file.txt";
 new_entry.mode = GIT_FILEMODE_BLOB;

 cl_git_pass(git_index_add_from_buffer(index,
  &new_entry, content, strlen(content)));

 cl_assert((ret_entry = git_index_get_bypath(index, "dummy-file.txt", 0)));
 cl_assert_equal_s("dummy-file.txt", ret_entry->path);
 cl_assert_equal_i(GIT_FILEMODE_BLOB, ret_entry->mode);


 new_entry.path = "dummy-file.txt";
 new_entry.mode = GIT_FILEMODE_BLOB_EXECUTABLE;

 cl_git_pass(git_index_add_from_buffer(index,
  &new_entry, content, strlen(content)));

 cl_assert((ret_entry = git_index_get_bypath(index, "dummy-file.txt", 0)));
 cl_assert_equal_s("dummy-file.txt", ret_entry->path);
 cl_assert_equal_i(GIT_FILEMODE_BLOB_EXECUTABLE, ret_entry->mode);


 new_entry.path = "dummy-link.txt";
 new_entry.mode = GIT_FILEMODE_LINK;

 cl_git_pass(git_index_add_from_buffer(index,
  &new_entry, content, strlen(content)));

 cl_assert((ret_entry = git_index_get_bypath(index, "dummy-link.txt", 0)));
 cl_assert_equal_s("dummy-link.txt", ret_entry->path);
 cl_assert_equal_i(GIT_FILEMODE_LINK, ret_entry->mode);


 new_entry.path = "invalid_mode.txt";
 new_entry.mode = GIT_FILEMODE_TREE;

 cl_git_fail(git_index_add_from_buffer(index,
  &new_entry, content, strlen(content)));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "invalid_mode.txt", 0));


 new_entry.path = "invalid_mode.txt";
 new_entry.mode = GIT_FILEMODE_COMMIT;

 cl_git_fail(git_index_add_from_buffer(index,
  &new_entry, content, strlen(content)));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "invalid_mode.txt", 0));

 git_index_free(index);
}
