
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_regexp_compile (int *,char*,int ) ;
 int git_regexp_search (int *,char*,int ,int *) ;
 int regex ;

void test_core_regexp__nonmatching_search_returns_error(void)
{
 cl_git_pass(git_regexp_compile(&regex, "a", 0));
 cl_git_fail(git_regexp_search(&regex, "b", 0, ((void*)0)));
}
