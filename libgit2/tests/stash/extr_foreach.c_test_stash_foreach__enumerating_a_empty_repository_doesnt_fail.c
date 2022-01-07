
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** oids; int invokes; } ;


 int REPO_NAME ;
 int callback_cb ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ data ;
 int git_repository_init (int *,int ,int ) ;
 int git_stash_foreach (int ,int ,TYPE_1__*) ;
 int repo ;

void test_stash_foreach__enumerating_a_empty_repository_doesnt_fail(void)
{
 char *oids[] = { ((void*)0) };

 data.oids = oids;

 cl_git_pass(git_repository_init(&repo, REPO_NAME, 0));

 cl_git_pass(git_stash_foreach(repo, callback_cb, &data));

 cl_assert_equal_i(0, data.invokes);
}
