
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_regexp_compile (int *,char*,int ) ;
 int git_regexp_search (int *,char*,int ,int *) ;
 int regex ;

void test_core_regexp__simple_search_matches(void)
{
 cl_git_pass(git_regexp_compile(&regex, "a", 0));
 cl_git_pass(git_regexp_search(&regex, "a", 0, ((void*)0)));
}
