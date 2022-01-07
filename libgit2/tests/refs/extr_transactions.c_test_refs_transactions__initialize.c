
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int g_tx ;
 int git_transaction_new (int *,int ) ;

void test_refs_transactions__initialize(void)
{
   g_repo = cl_git_sandbox_init("testrepo");
   cl_git_pass(git_transaction_new(&g_tx, g_repo));
}
