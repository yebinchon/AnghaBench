
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;


 int _repo ;
 int _sig ;
 int assert_note_equal (int *,char*,int *) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char*) ;
 int git_note_create (int *,int ,char*,int ,int ,int *,char*,int) ;
 int git_note_free (int *) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__creating_a_note_on_a_target_can_overwrite_existing_note(void)
{
 git_oid note_oid, target_oid;
 git_note *note, *namespace_note;

 cl_git_pass(git_oid_fromstr(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

 create_note(&note_oid, ((void*)0), "08b041783f40edfe12bb406c9c9a8a040177c125", "hello old world\n");
 cl_git_pass(git_note_create(&note_oid, _repo, ((void*)0), _sig, _sig, &target_oid, "hello new world\n", 1));

 cl_git_pass(git_note_read(&note, _repo, ((void*)0), &target_oid));
 assert_note_equal(note, "hello new world\n", &note_oid);

 create_note(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello old world\n");
 cl_git_pass(git_note_create(&note_oid, _repo, "refs/notes/some/namespace", _sig, _sig, &target_oid, "hello new ref world\n", 1));

 cl_git_pass(git_note_read(&namespace_note, _repo, "refs/notes/some/namespace", &target_oid));
 assert_note_equal(namespace_note, "hello new ref world\n", &note_oid);

 git_note_free(note);
 git_note_free(namespace_note);
}
