
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_empty_id ;
 int g_index ;
 int g_odb ;
 int g_repo ;
 int git_odb_write (int *,int ,char*,int ,int ) ;
 int git_repository_index (int *,int ) ;
 int git_repository_odb (int *,int ) ;

void test_index_collision__initialize(void)
{
 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_pass(git_repository_odb(&g_odb, g_repo));
 cl_git_pass(git_repository_index(&g_index, g_repo));

 cl_git_pass(git_odb_write(&g_empty_id, g_odb, "", 0, GIT_OBJECT_BLOB));
}
