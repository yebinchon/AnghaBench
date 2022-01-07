
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _walk ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revwalk_push (int ,int *) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__disallow_non_commit(void)
{
 git_oid oid;

 revwalk_basic_setup_walk(((void*)0));

 cl_git_pass(git_oid_fromstr(&oid, "521d87c1ec3aef9824daf6d96cc0ae3710766d91"));
 cl_git_fail(git_revwalk_push(_walk, &oid));
}
