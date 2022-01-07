
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_oid ;
typedef int git_filemode_t ;


 int blob_oid ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int repo ;

void test_object_tree_attributes__ensure_correctness_of_attributes_on_insertion(void)
{
 git_treebuilder *builder;
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, blob_oid));

 cl_git_pass(git_treebuilder_new(&builder, repo, ((void*)0)));

 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "one.txt", &oid, (git_filemode_t)0777777));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "one.txt", &oid, (git_filemode_t)0100666));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "one.txt", &oid, (git_filemode_t)0000001));

 git_treebuilder_free(builder);
}
