
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_TREE ;
 int one_blob_and_one_tree ;
 int tree_checker (int *,char*,int ) ;
 int tree_creator (int *,int ) ;
 int two_blobs ;

void test_object_tree_duplicateentries__cannot_create_a_duplicate_entry_through_the_treebuilder(void)
{
 git_oid tid;

 tree_creator(&tid, two_blobs);
 tree_checker(&tid, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd", GIT_FILEMODE_BLOB);

 tree_creator(&tid, one_blob_and_one_tree);
 tree_checker(&tid, "4e0883eeeeebc1fb1735161cea82f7cb5fab7e63", GIT_FILEMODE_TREE);
}
