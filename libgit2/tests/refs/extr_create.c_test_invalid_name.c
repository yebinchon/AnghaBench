
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int current_head_target ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_symbolic_create (int **,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static void test_invalid_name(const char *name)
{
 git_reference *new_reference;
 git_oid id;

 git_oid_fromstr(&id, current_master_tip);

 cl_assert_equal_i(GIT_EINVALIDSPEC, git_reference_create(
  &new_reference, g_repo, name, &id, 0, ((void*)0)));

 cl_assert_equal_i(GIT_EINVALIDSPEC, git_reference_symbolic_create(
  &new_reference, g_repo, name, current_head_target, 0, ((void*)0)));
}
