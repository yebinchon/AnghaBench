
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_SYSDIR_SYSTEM ;
 int cl_git_pass (int ) ;
 int git_sysdir_set (int ,int *) ;

__attribute__((used)) static void set_system_search_path_from_env(void)
{
 cl_git_pass(git_sysdir_set(GIT_SYSDIR_SYSTEM, ((void*)0)));
}
