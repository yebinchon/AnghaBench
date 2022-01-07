
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int GIT_ITEROVER ;
 int GIT_SORT_TOPOLOGICAL ;
 int _head_id ;
 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int * commit_ids ;
 int git_revwalk_add_hide_cb (int *,int ,int *) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int ) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int *) ;
 int git_revwalk_sorting (int *,int ) ;
 int hide_commit_cb ;

void test_revwalk_hidecb__hide_some_commits(void)
{
 git_revwalk *walk;
 git_oid id;
 int i, error;

 cl_git_pass(git_revwalk_new(&walk, _repo));
 cl_git_pass(git_revwalk_push(walk, &_head_id));
 git_revwalk_sorting(walk, GIT_SORT_TOPOLOGICAL);


 cl_git_pass(git_revwalk_add_hide_cb(walk, hide_commit_cb, ((void*)0)));

 i = 0;
 while ((error = git_revwalk_next(&id, walk)) == 0) {
  cl_assert_equal_oid(&commit_ids[i], &id);
  i++;
 }

 cl_assert_equal_i(i, 4);
 cl_assert_equal_i(error, GIT_ITEROVER);

 git_revwalk_free(walk);
}
