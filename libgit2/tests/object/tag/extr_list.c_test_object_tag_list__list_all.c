
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_1__ git_strarray ;


 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_strarray_free (TYPE_1__*) ;
 int git_tag_list (TYPE_1__*,int ) ;

void test_object_tag_list__list_all(void)
{

 git_strarray tag_list;

 cl_git_pass(git_tag_list(&tag_list, g_repo));

 cl_assert_equal_i((int)tag_list.count, 6);

 git_strarray_free(&tag_list);
}
