
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int compress_filter ;
 int * g_repo ;
 int git__free (int ) ;
 int git_filter_unregister (char*) ;

void test_filter_stream__cleanup(void)
{
 cl_git_sandbox_cleanup();
 g_repo = ((void*)0);

 git_filter_unregister("compress");
 git__free(compress_filter);
}
