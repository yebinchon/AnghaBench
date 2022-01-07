
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;


 int _repo ;
 int assert_note_equal (int *,char*,int *) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char*) ;
 int git_note_free (int *) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__can_insert_a_note_with_a_custom_namespace(void)
{
 git_oid note_oid, target_oid;
 git_note *note;

 cl_git_pass(git_oid_fromstr(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

 create_note(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world on a custom namespace\n");

 cl_git_pass(git_note_read(&note, _repo, "refs/notes/some/namespace", &target_oid));

 assert_note_equal(note, "hello world on a custom namespace\n", &note_oid);

 git_note_free(note);
}
