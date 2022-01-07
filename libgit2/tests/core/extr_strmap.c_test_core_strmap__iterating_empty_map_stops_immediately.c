
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ITEROVER ;
 int cl_git_fail_with (int ,int ) ;
 int g_table ;
 int git_strmap_iterate (int *,int ,size_t*,int *) ;

void test_core_strmap__iterating_empty_map_stops_immediately(void)
{
 size_t i = 0;

 cl_git_fail_with(git_strmap_iterate(((void*)0), g_table, &i, ((void*)0)), GIT_ITEROVER);
}
