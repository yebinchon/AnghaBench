
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ITEROVER ;
 int _walk ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_streq (int *,char*) ;
 int git_revwalk_hide_ref (int ,char*) ;
 int git_revwalk_next (int *,int ) ;
 int git_revwalk_push_ref (int ,char*) ;
 int revwalk_basic_setup_walk (char*) ;

void test_revwalk_basic__newer_hidden_commit_hides_old_commits(void)
{
 git_oid oid;

 revwalk_basic_setup_walk("revwalk.git");

 cl_git_pass(git_revwalk_push_ref(_walk, "refs/heads/D"));
 cl_git_pass(git_revwalk_hide_ref(_walk, "refs/heads/B"));
 cl_git_pass(git_revwalk_hide_ref(_walk, "refs/heads/A"));
 cl_git_pass(git_revwalk_hide_ref(_walk, "refs/heads/E"));

 cl_git_pass(git_revwalk_next(&oid, _walk));
 cl_assert(git_oid_streq(&oid, "b82cee5004151ae0c4f82b69fb71b87477664b6f"));
 cl_git_pass(git_revwalk_next(&oid, _walk));
 cl_assert(git_oid_streq(&oid, "790ba0facf6fd103699a5c40cd19dad277ff49cd"));

 cl_git_fail_with(GIT_ITEROVER, git_revwalk_next(&oid, _walk));
}
