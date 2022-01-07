
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_TREE ;
 int assert_allowed (int ) ;
 char* blob_oid ;
 int cl_git_pass (int ) ;
 char* first_tree ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;

__attribute__((used)) static void test_invalid_objects(bool should_allow_invalid)
{
 git_treebuilder *builder;
 git_oid valid_blob_id, invalid_blob_id, valid_tree_id, invalid_tree_id;
 cl_git_pass(git_oid_fromstr(&valid_blob_id, blob_oid));
 cl_git_pass(git_oid_fromstr(&invalid_blob_id,
  "1234567890123456789012345678901234567890"));
 cl_git_pass(git_oid_fromstr(&valid_tree_id, first_tree));
 cl_git_pass(git_oid_fromstr(&invalid_tree_id,
  "0000000000111111111122222222223333333333"));

 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));


 cl_git_pass(git_treebuilder_insert(((void*)0), builder, "file.txt", &valid_blob_id, GIT_FILEMODE_BLOB));
 cl_git_pass(git_treebuilder_insert(((void*)0), builder, "folder", &valid_tree_id, GIT_FILEMODE_TREE));


 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "file.txt", &invalid_blob_id, GIT_FILEMODE_BLOB)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 55, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"file.txt\", &invalid_blob_id, GIT_FILEMODE_BLOB)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"file.txt\", &invalid_blob_id, GIT_FILEMODE_BLOB)"), ((void*)0), 1);
 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "folder", &invalid_blob_id, GIT_FILEMODE_BLOB)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 56, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"folder\", &invalid_blob_id, GIT_FILEMODE_BLOB)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"folder\", &invalid_blob_id, GIT_FILEMODE_BLOB)"), ((void*)0), 1);


 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "invalid_file.txt", &invalid_blob_id, GIT_FILEMODE_BLOB)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 59, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"invalid_file.txt\", &invalid_blob_id, GIT_FILEMODE_BLOB)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"invalid_file.txt\", &invalid_blob_id, GIT_FILEMODE_BLOB)"), ((void*)0), 1);
 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "invalid_folder", &invalid_blob_id, GIT_FILEMODE_BLOB)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 60, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"invalid_folder\", &invalid_blob_id, GIT_FILEMODE_BLOB)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"invalid_folder\", &invalid_blob_id, GIT_FILEMODE_BLOB)"), ((void*)0), 1);


 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "file_as_folder", &valid_blob_id, GIT_FILEMODE_TREE)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 63, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"file_as_folder\", &valid_blob_id, GIT_FILEMODE_TREE)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"file_as_folder\", &valid_blob_id, GIT_FILEMODE_TREE)"), ((void*)0), 1);
 clar__assert(!(git_treebuilder_insert(((void*)0), builder, "folder_as_file.txt", &valid_tree_id, GIT_FILEMODE_BLOB)) == should_allow_invalid, "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c", 64, (should_allow_invalid ? "Expected function call to succeed: " "git_treebuilder_insert(NULL, builder, \"folder_as_file.txt\", &valid_tree_id, GIT_FILEMODE_BLOB)" : "Expected function call to fail: " "git_treebuilder_insert(NULL, builder, \"folder_as_file.txt\", &valid_tree_id, GIT_FILEMODE_BLOB)"), ((void*)0), 1);



 git_treebuilder_free(builder);
}
