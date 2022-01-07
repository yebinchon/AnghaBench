
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_repository_init (int *,char*,int ) ;
 int git_signature_new (int *,char*,char*,int,int) ;
 int repo ;
 int signature ;

void test_stash_drop__initialize(void)
{
 cl_git_pass(git_repository_init(&repo, "stash", 0));
 cl_git_pass(git_signature_new(&signature, "nulltoken", "emeric.fermas@gmail.com", 1323847743, 60));
}
