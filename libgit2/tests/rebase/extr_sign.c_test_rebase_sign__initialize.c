
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_signature_new (int *,char*,char*,int,int ) ;
 int repo ;
 int signature ;

void test_rebase_sign__initialize(void)
{
 repo = cl_git_sandbox_init("rebase");
 cl_git_pass(git_signature_new(&signature, "Rebaser",
  "rebaser@rebaser.rb", 1405694510, 0));
}
