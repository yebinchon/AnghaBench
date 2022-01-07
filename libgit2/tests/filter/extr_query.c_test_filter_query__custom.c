
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ git_filter ;


 int GIT_FILTER_VERSION ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int filter_for (char*,char*) ;
 int git_filter_register (char*,TYPE_1__*,int) ;
 int git_filter_unregister (char*) ;

void test_filter_query__custom(void)
{
 git_filter custom = { GIT_FILTER_VERSION };

 cl_git_pass(git_filter_register(
  "custom", &custom, 42));

 cl_assert_equal_i(1, filter_for("foo.custom", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.custom", "ident"));
 cl_assert_equal_i(1, filter_for("foo.custom", "custom"));

 git_filter_unregister("custom");
}
