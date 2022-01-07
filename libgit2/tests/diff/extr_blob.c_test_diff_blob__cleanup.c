
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * alien ;
 int cl_git_sandbox_cleanup () ;
 int * d ;
 int git_blob_free (int *) ;

void test_diff_blob__cleanup(void)
{
 git_blob_free(d);
 d = ((void*)0);

 git_blob_free(alien);
 alien = ((void*)0);

 cl_git_sandbox_cleanup();
}
