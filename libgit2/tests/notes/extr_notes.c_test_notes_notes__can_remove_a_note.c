
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;


 int _repo ;
 int _sig ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char*) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_note_remove (int ,char*,int ,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__can_remove_a_note(void)
{
 git_oid note_oid, target_oid;
 git_note *note;

 create_note(&note_oid, "refs/notes/i-can-see-dead-notes", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", "I decorate 4a20\n");

 cl_git_pass(git_oid_fromstr(&target_oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));
 cl_git_pass(git_note_remove(_repo, "refs/notes/i-can-see-dead-notes", _sig, _sig, &target_oid));

 cl_git_fail(git_note_read(&note, _repo, "refs/notes/i-can-see-dead-notes", &target_oid));
}
