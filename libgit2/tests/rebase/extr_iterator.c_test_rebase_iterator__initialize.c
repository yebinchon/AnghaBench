
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _index ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_repository_index (int *,int ) ;
 int git_signature_new (int *,char*,char*,int,int ) ;
 int repo ;
 int signature ;

void test_rebase_iterator__initialize(void)
{
 repo = cl_git_sandbox_init("rebase");
 cl_git_pass(git_repository_index(&_index, repo));
 cl_git_pass(git_signature_new(&signature, "Rebaser",
  "rebaser@rebaser.rb", 1405694510, 0));
}
