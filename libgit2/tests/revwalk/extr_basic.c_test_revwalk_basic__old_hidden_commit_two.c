
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ITEROVER ;
 int _walk ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_oid_streq (int *,char*) ;
 int git_revwalk_hide (int ,int *) ;
 int git_revwalk_next (int *,int ) ;
 int git_revwalk_push (int ,int *) ;
 int revwalk_basic_setup_walk (char*) ;

void test_revwalk_basic__old_hidden_commit_two(void)
{
 git_oid new_id, old_id, oid;

 revwalk_basic_setup_walk("testrepo.git");

 cl_git_pass(git_oid_fromstr(&new_id, "bd758010071961f28336333bc41e9c64c9a64866"));
 cl_git_pass(git_revwalk_push(_walk, &new_id));

 cl_git_pass(git_oid_fromstr(&old_id, "b91e763008b10db366442469339f90a2b8400d0a"));
 cl_git_pass(git_revwalk_hide(_walk, &old_id));

 cl_git_pass(git_revwalk_next(&oid, _walk));
 cl_assert(!git_oid_streq(&oid, "bd758010071961f28336333bc41e9c64c9a64866"));

 cl_git_fail_with(GIT_ITEROVER, git_revwalk_next(&oid, _walk));
}
