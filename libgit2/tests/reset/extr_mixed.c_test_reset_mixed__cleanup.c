
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_object_free (int *) ;
 int * target ;

void test_reset_mixed__cleanup(void)
{
 git_object_free(target);
 target = ((void*)0);

 cl_git_sandbox_cleanup();
}
