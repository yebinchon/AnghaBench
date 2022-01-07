
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
 int git_note_read (int **,int ,char*,int *) ;
 int git_note_remove (int ,char*,int ,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__can_remove_a_note_in_an_existing_fanout(void)
{
 git_oid target_oid;
 git_note *note;

 cl_git_pass(git_oid_fromstr(&target_oid, "8496071c1b46c854b31185ea97743be6a8774479"));
 cl_git_pass(git_note_remove(_repo, "refs/notes/fanout", _sig, _sig, &target_oid));

 cl_git_fail(git_note_read(&note, _repo, "refs/notes/fanout", &target_oid));
}
