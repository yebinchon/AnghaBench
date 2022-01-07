
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_signature_free (int ) ;
 int signature ;

void test_rebase_merge__cleanup(void)
{
 git_signature_free(signature);
 cl_git_sandbox_cleanup();
}
