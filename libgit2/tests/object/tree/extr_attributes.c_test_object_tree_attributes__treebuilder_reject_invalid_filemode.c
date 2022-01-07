
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree_entry ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB_GROUP_WRITABLE ;
 int blob_oid ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int const**,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int repo ;

void test_object_tree_attributes__treebuilder_reject_invalid_filemode(void)
{
 git_treebuilder *builder;
 git_oid bid;
 const git_tree_entry *entry;

 cl_git_pass(git_oid_fromstr(&bid, blob_oid));
 cl_git_pass(git_treebuilder_new(&builder, repo, ((void*)0)));

 cl_git_fail(git_treebuilder_insert(
  &entry,
  builder,
  "normalized.txt",
  &bid,
  GIT_FILEMODE_BLOB_GROUP_WRITABLE));

 git_treebuilder_free(builder);
}
