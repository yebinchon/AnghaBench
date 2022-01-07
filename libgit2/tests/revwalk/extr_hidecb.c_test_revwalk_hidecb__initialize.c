
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _head_id ;
 int _repo ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int commit_count ;
 int commit_head ;
 int * commit_ids ;
 int * commit_strs ;
 int git_oid_fromstr (int *,int ) ;
 int git_repository_open (int *,int ) ;

void test_revwalk_hidecb__initialize(void)
{
 int i;

 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_oid_fromstr(&_head_id, commit_head));

 for (i = 0; i < commit_count; i++)
  cl_git_pass(git_oid_fromstr(&commit_ids[i], commit_strs[i]));

}
