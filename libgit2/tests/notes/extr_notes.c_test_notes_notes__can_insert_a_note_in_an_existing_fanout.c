
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;


 size_t MESSAGES_COUNT ;
 int _repo ;
 int _sig ;
 int cl_git_pass (int ) ;
 int git_note_create (int *,int ,char*,int ,int ,int *,int ,int ) ;
 int git_note_free (int *) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int * messages ;

void test_notes_notes__can_insert_a_note_in_an_existing_fanout(void)
{
 size_t i;
 git_oid note_oid, target_oid;
 git_note *_note;

 cl_git_pass(git_oid_fromstr(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

 for (i = 0; i < MESSAGES_COUNT; i++) {
  cl_git_pass(git_note_create(&note_oid, _repo, "refs/notes/fanout", _sig, _sig, &target_oid, messages[i], 0));
  cl_git_pass(git_note_read(&_note, _repo, "refs/notes/fanout", &target_oid));
  git_note_free(_note);

  git_oid_cpy(&target_oid, &note_oid);
 }
}
