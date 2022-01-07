
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_1__ git_strarray ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_strarray_free (TYPE_1__*) ;

void test_refs_list__do_not_retrieve_references_which_name_end_with_a_lock_extension(void)
{
 git_strarray ref_list;


 cl_git_mkfile(
  "./testrepo/.git/refs/heads/hanwen.lock",
  "144344043ba4d4a405da03de3844aa829ae8be0e\n");

 cl_git_pass(git_reference_list(&ref_list, g_repo));
 cl_assert_equal_i((int)ref_list.count, 18);

 git_strarray_free(&ref_list);
}
