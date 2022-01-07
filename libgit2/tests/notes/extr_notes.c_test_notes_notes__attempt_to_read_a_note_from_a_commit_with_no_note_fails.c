
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;
typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int _repo ;
 int _sig ;
 int cl_assert (int *) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_note_commit_create (int *,int *,int ,int *,int ,int ,int *,char*,int) ;
 int git_note_commit_read (int **,int ,int *,int *) ;
 int git_note_commit_remove (int *,int ,int *,int ,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__attempt_to_read_a_note_from_a_commit_with_no_note_fails(void)
{
 git_oid oid, notes_commit_oid;
 git_commit *notes_commit;
 git_note *note;

 cl_git_pass(git_oid_fromstr(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

 cl_git_pass(git_note_commit_create(&notes_commit_oid, ((void*)0), _repo, ((void*)0), _sig, _sig, &oid, "I decorate 4a20\n", 1));

 git_commit_lookup(&notes_commit, _repo, &notes_commit_oid);

 cl_git_pass(git_note_commit_remove(&notes_commit_oid, _repo, notes_commit, _sig, _sig, &oid));
 git_commit_free(notes_commit);

 git_commit_lookup(&notes_commit, _repo, &notes_commit_oid);

 cl_assert(notes_commit);

 cl_git_fail_with(GIT_ENOTFOUND, git_note_commit_read(&note, _repo, notes_commit, &oid));

 git_commit_free(notes_commit);
}
