
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_EEXISTS ;
 int _repo ;
 int _sig ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char*) ;
 int git_note_create (int *,int ,char*,int ,int ,int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__creating_a_note_on_a_target_which_already_has_one_returns_EEXISTS(void)
{
 int error;
 git_oid note_oid, target_oid;

 cl_git_pass(git_oid_fromstr(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

 create_note(&note_oid, ((void*)0), "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");
 error = git_note_create(&note_oid, _repo, ((void*)0), _sig, _sig, &target_oid, "hello world\n", 0);
 cl_git_fail(error);
 cl_assert_equal_i(GIT_EEXISTS, error);

 create_note(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");
 error = git_note_create(&note_oid, _repo, "refs/notes/some/namespace", _sig, _sig, &target_oid, "hello world\n", 0);
 cl_git_fail(error);
 cl_assert_equal_i(GIT_EEXISTS, error);
}
