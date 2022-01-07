
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;

void test_object_tree_write__protect_filesystems(void)
{
 git_treebuilder *builder;
 git_oid bid;

 cl_git_pass(git_oid_fromstr(&bid, "fa49b077972391ad58037050f2a75f74e3671e92"));




 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));


 cl_git_pass(git_treebuilder_insert(((void*)0), builder, ".git.", &bid, GIT_FILEMODE_BLOB));
 cl_git_pass(git_treebuilder_insert(((void*)0), builder, "git~1", &bid, GIT_FILEMODE_BLOB));



 cl_git_pass(git_treebuilder_insert(((void*)0), builder, ".git\xef\xbb\xbf", &bid, GIT_FILEMODE_BLOB));
 cl_git_pass(git_treebuilder_insert(((void*)0), builder, ".git\xe2\x80\xad", &bid, GIT_FILEMODE_BLOB));


 git_treebuilder_free(builder);





 cl_repo_set_bool(g_repo, "core.protectHFS", 1);
 cl_repo_set_bool(g_repo, "core.protectNTFS", 1);

 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));

 cl_git_fail(git_treebuilder_insert(((void*)0), builder, ".git.", &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "git~1", &bid, GIT_FILEMODE_BLOB));

 cl_git_fail(git_treebuilder_insert(((void*)0), builder, ".git\xef\xbb\xbf", &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, ".git\xe2\x80\xad", &bid, GIT_FILEMODE_BLOB));

 git_treebuilder_free(builder);
}
