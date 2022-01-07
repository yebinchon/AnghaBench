
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int git_stash_apply (int ,int ,int *) ;
 int repo ;

void test_stash_apply__with_existing_file(void)
{
 cl_git_mkfile("stash/where", "oops!\n");
 cl_git_fail(git_stash_apply(repo, 0, ((void*)0)));
}
