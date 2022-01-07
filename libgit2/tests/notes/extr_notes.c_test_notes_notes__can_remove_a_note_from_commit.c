
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;
typedef int git_note ;
typedef int git_commit ;


 int _repo ;
 int _sig ;
 int cl_assert (int *) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_note_commit_create (int *,int *,int ,int *,int ,int ,int *,char*,int ) ;
 int git_note_commit_remove (int *,int ,int *,int ,int ,int *) ;
 int git_note_free (int *) ;
 int git_note_read (int **,int ,char*,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int **,int ,char*,int *,int ,int *) ;
 int git_reference_free (int *) ;

void test_notes_notes__can_remove_a_note_from_commit(void)
{
 git_oid oid, notes_commit_oid;
 git_note *note = ((void*)0);
 git_commit *existing_notes_commit;
 git_reference *ref;

 cl_git_pass(git_oid_fromstr(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

 cl_git_pass(git_note_commit_create(&notes_commit_oid, ((void*)0), _repo, ((void*)0), _sig, _sig, &oid, "I decorate 4a20\n", 0));

 git_commit_lookup(&existing_notes_commit, _repo, &notes_commit_oid);

 cl_assert(existing_notes_commit);

 cl_git_pass(git_note_commit_remove(&notes_commit_oid, _repo, existing_notes_commit, _sig, _sig, &oid));



 cl_git_pass(git_reference_create(&ref, _repo, "refs/notes/i-can-see-dead-notes", &notes_commit_oid, 0, ((void*)0)));

 cl_git_fail(git_note_read(&note, _repo, "refs/notes/i-can-see-dead-notes", &oid));

 git_commit_free(existing_notes_commit);
 git_reference_free(ref);
 git_note_free(note);
}
