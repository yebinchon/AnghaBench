
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 int GIT_FILEMODE_LINK ;
 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;
 int invalid_id ;
 int test_add_entry (int,int ,int ) ;
 int valid_blob_id ;
 int valid_commit_id ;
 int valid_tree_id ;

void test_index_add__invalid_entries_succeeds_by_default(void)
{





 test_add_entry(1, valid_blob_id, GIT_FILEMODE_BLOB);
 test_add_entry(1, valid_blob_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(1, valid_blob_id, GIT_FILEMODE_LINK);


 test_add_entry(0, invalid_id, GIT_FILEMODE_BLOB);
 test_add_entry(0, invalid_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(0, invalid_id, GIT_FILEMODE_LINK);


 test_add_entry(0, valid_commit_id, GIT_FILEMODE_BLOB);
 test_add_entry(0, valid_tree_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(0, valid_commit_id, GIT_FILEMODE_LINK);





 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));


 test_add_entry(1, valid_blob_id, GIT_FILEMODE_BLOB);
 test_add_entry(1, valid_blob_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(1, valid_blob_id, GIT_FILEMODE_LINK);


 test_add_entry(1, invalid_id, GIT_FILEMODE_BLOB);
 test_add_entry(1, invalid_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(1, invalid_id, GIT_FILEMODE_LINK);


 test_add_entry(1, valid_commit_id, GIT_FILEMODE_BLOB);
 test_add_entry(1, valid_tree_id, GIT_FILEMODE_BLOB_EXECUTABLE);
 test_add_entry(1, valid_commit_id, GIT_FILEMODE_LINK);
}
