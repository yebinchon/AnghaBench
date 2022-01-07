
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;

void test_status_renames__initialize(void)
{
 g_repo = cl_git_sandbox_init("renames");

 cl_repo_set_bool(g_repo, "core.autocrlf", 0);
}
