
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree_entry ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_TREE ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_treebuilder_insert (int const**,int *,char*,int *,int ) ;

__attribute__((used)) static void one_blob_and_one_tree(git_treebuilder *bld)
{
 git_oid oid;
 const git_tree_entry *entry;

 cl_git_pass(git_oid_fromstr(&oid,
  "a8233120f6ad708f843d861ce2b7228ec4e3dec6"));

 cl_git_pass(git_treebuilder_insert(
  &entry, bld, "duplicate", &oid,
  GIT_FILEMODE_BLOB));

 cl_git_pass(git_oid_fromstr(&oid,
  "4e0883eeeeebc1fb1735161cea82f7cb5fab7e63"));

 cl_git_pass(git_treebuilder_insert(
  &entry, bld, "duplicate", &oid,
  GIT_FILEMODE_TREE));
}
