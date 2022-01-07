
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_setenv (char*,int *) ;

__attribute__((used)) static void clear_git_env(void)
{
 cl_setenv("GIT_DIR", ((void*)0));
 cl_setenv("GIT_CEILING_DIRECTORIES", ((void*)0));
 cl_setenv("GIT_INDEX_FILE", ((void*)0));
 cl_setenv("GIT_NAMESPACE", ((void*)0));
 cl_setenv("GIT_OBJECT_DIRECTORY", ((void*)0));
 cl_setenv("GIT_ALTERNATE_OBJECT_DIRECTORIES", ((void*)0));
 cl_setenv("GIT_WORK_TREE", ((void*)0));
 cl_setenv("GIT_COMMON_DIR", ((void*)0));
}
