
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int orig_path; } ;
typedef TYPE_1__ git_blame_hunk ;


 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_p (TYPE_1__ const*,int *) ;
 int cl_assert_equal_s (int ,char*) ;
 int g_blame ;
 TYPE_1__* git_blame_get_hunk_byindex (int ,int) ;

void test_blame_getters__byindex(void)
{
 const git_blame_hunk *h = git_blame_get_hunk_byindex(g_blame, 2);
 cl_assert(h);
 cl_assert_equal_s(h->orig_path, "c");

 h = git_blame_get_hunk_byindex(g_blame, 95);
 cl_assert_equal_p(h, ((void*)0));
}
