
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _index ;
 int * _target ;
 int cl_git_sandbox_cleanup () ;
 int git_index_free (int *) ;
 int git_object_free (int *) ;

void test_reset_default__cleanup(void)
{
 git_object_free(_target);
 _target = ((void*)0);

 git_index_free(_index);
 _index = ((void*)0);

 cl_git_sandbox_cleanup();
}
