
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _sig ;
 int cl_git_sandbox_cleanup () ;
 int git_signature_free (int *) ;

void test_notes_notes__cleanup(void)
{
 git_signature_free(_sig);
 _sig = ((void*)0);

 cl_git_sandbox_cleanup();
}
