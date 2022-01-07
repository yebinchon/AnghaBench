
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int _repo ;
 int _sig ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_note_remove (int ,char*,int ,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__removing_a_note_which_doesnt_exists_returns_ENOTFOUND(void)
{
 int error;
 git_oid target_oid;

 cl_git_pass(git_oid_fromstr(&target_oid, "8496071c1b46c854b31185ea97743be6a8774479"));
 cl_git_pass(git_note_remove(_repo, "refs/notes/fanout", _sig, _sig, &target_oid));

 error = git_note_remove(_repo, "refs/notes/fanout", _sig, _sig, &target_oid);
 cl_git_fail(error);
 cl_assert_equal_i(GIT_ENOTFOUND, error);
}
