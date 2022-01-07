
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_set_head_detached (int ,int *) ;
 int repo ;

void test_repo_head__set_head_detached_Return_ENOTFOUND_when_the_object_doesnt_exist(void)
{
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"));

 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_set_head_detached(repo, &oid));
}
