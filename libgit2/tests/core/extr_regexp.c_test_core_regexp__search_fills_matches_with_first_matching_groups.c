
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; } ;
typedef TYPE_1__ git_regmatch ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_regexp_compile (int *,char*,int ) ;
 int git_regexp_search (int *,char*,int,TYPE_1__*) ;
 int regex ;

void test_core_regexp__search_fills_matches_with_first_matching_groups(void)
{
 git_regmatch matches[2];

 cl_git_pass(git_regexp_compile(&regex, "(a)(b)(c)", 0));
 cl_git_pass(git_regexp_search(&regex, "abc", 2, matches));
 cl_assert_equal_i(matches[0].start, 0);
 cl_assert_equal_i(matches[0].end, 3);
 cl_assert_equal_i(matches[1].start, 0);
 cl_assert_equal_i(matches[1].end, 1);
}
