
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_tx ;
 int git_transaction_free (int ) ;

void test_refs_transactions__cleanup(void)
{
 git_transaction_free(g_tx);
 cl_git_sandbox_cleanup();
}
