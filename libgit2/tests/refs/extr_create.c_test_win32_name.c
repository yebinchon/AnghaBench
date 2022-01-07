
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int) ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_free (int *) ;

__attribute__((used)) static void test_win32_name(const char *name)
{
 git_reference *new_reference = ((void*)0);
 git_oid id;
 int ret;

 git_oid_fromstr(&id, current_master_tip);

 ret = git_reference_create(&new_reference, g_repo, name, &id, 0, ((void*)0));




 cl_git_pass(ret);


 git_reference_free(new_reference);
}
