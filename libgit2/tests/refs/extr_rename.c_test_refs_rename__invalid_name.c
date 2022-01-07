
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_rename (TYPE_1__**,TYPE_1__*,char*,int ,int *) ;
 int packed_test_head_name ;

void test_refs_rename__invalid_name(void)
{

 git_reference *looked_up_ref, *renamed_ref;


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, packed_test_head_name));


 cl_assert_equal_i(
  GIT_EINVALIDSPEC,
  git_reference_rename(&renamed_ref, looked_up_ref, "Hello! I'm a very invalid name.", 0, ((void*)0)));




 cl_assert_equal_i(GIT_EINVALIDSPEC, git_reference_rename(&renamed_ref, looked_up_ref, "i-will-sudo-you", 0, ((void*)0)));


 git_reference_free(looked_up_ref);
 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, packed_test_head_name));
 cl_assert_equal_s(looked_up_ref->name, packed_test_head_name);

 git_reference_free(looked_up_ref);
}
