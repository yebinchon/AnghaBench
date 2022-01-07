
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int expected_remote_name ;
 int expected_remote_name_length ;
 int g_repo ;
 scalar_t__ strlen (int ) ;

void test_refs_branches_remote__initialize(void)
{
 g_repo = cl_git_sandbox_init("testrepo");

 expected_remote_name_length = (int)strlen(expected_remote_name) + 1;
}
