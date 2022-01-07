
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_type (TYPE_1__*) ;
 int packed_head_name ;
 int packed_test_head_name ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_read__loose_first(void)
{

 git_reference *reference;

 cl_git_pass(git_reference_lookup(&reference, g_repo, packed_head_name));
 git_reference_free(reference);
 cl_git_pass(git_reference_lookup(&reference, g_repo, packed_test_head_name));
 cl_assert(git_reference_type(reference) & GIT_REFERENCE_DIRECT);
 cl_assert(reference_is_packed(reference) == 0);
 cl_assert_equal_s(reference->name, packed_test_head_name);

 git_reference_free(reference);
}
