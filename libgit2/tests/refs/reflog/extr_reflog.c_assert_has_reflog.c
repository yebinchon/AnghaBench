
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int g_repo ;
 int git_reference_has_log (int ,char const*) ;

__attribute__((used)) static void assert_has_reflog(bool expected_result, const char *name)
{
 cl_assert_equal_i(expected_result, git_reference_has_log(g_repo, name));
}
