
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int GIT_ITEROVER ;
 int _head_id ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int) ;
 int git_revwalk_add_hide_cb (int *,int ,int *) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int ) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int *) ;
 int hide_none_cb ;

void test_revwalk_hidecb__add_hide_cb_during_walking(void)
{
 git_revwalk *walk;
 git_oid id;
 int error;

 cl_git_pass(git_revwalk_new(&walk, _repo));
 cl_git_pass(git_revwalk_push(walk, &_head_id));


 cl_git_pass(git_revwalk_next(&id, walk));


 cl_git_pass(git_revwalk_add_hide_cb(walk, hide_none_cb, ((void*)0)));


 error = git_revwalk_next(&id, walk);
 cl_assert_equal_i(error, GIT_ITEROVER);

 git_revwalk_free(walk);
}
