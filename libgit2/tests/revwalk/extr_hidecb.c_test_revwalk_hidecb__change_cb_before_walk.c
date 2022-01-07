
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int GIT_ITEROVER ;
 int _head_id ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_revwalk_add_hide_cb (int *,int ,int *) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int ) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int *) ;
 int hide_every_commit_cb ;
 int hide_none_cb ;

void test_revwalk_hidecb__change_cb_before_walk(void)
{
 git_revwalk *walk;
 git_oid id;

 cl_git_pass(git_revwalk_new(&walk, _repo));
 cl_git_pass(git_revwalk_add_hide_cb(walk, hide_none_cb, ((void*)0)));
 cl_git_pass(git_revwalk_add_hide_cb(walk, hide_every_commit_cb, ((void*)0)));
 cl_git_pass(git_revwalk_push(walk, &_head_id));


 cl_assert_equal_i(GIT_ITEROVER, git_revwalk_next(&id, walk));

 git_revwalk_free(walk);
}
