
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_oid ;


 int GIT_FILEMODE_COMMIT ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;

__attribute__((used)) static void test_inserting_submodule(void)
{
 git_treebuilder *bld;
 git_oid sm_id;

 cl_git_pass(git_oid_fromstr(&sm_id, "da39a3ee5e6b4b0d3255bfef95601890afd80709"));
 cl_git_pass(git_treebuilder_new(&bld, g_repo, ((void*)0)));
 cl_git_pass(git_treebuilder_insert(((void*)0), bld, "sm", &sm_id, GIT_FILEMODE_COMMIT));
 git_treebuilder_free(bld);
}
