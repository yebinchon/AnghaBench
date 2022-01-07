
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int git__free (char*) ;
 int git_commit_free (int *) ;
 int git_note_commit_remove (int *,int *,int *,int const*,int const*,int const*) ;
 int git_reference_create (int **,int *,char*,int *,int,int *) ;
 int git_reference_free (int *) ;
 int retrieve_note_commit (int **,char**,int *,char const*) ;

int git_note_remove(git_repository *repo, const char *notes_ref_in,
  const git_signature *author, const git_signature *committer,
  const git_oid *oid)
{
 int error;
 char *notes_ref_target = ((void*)0);
 git_commit *existing_notes_commit = ((void*)0);
 git_oid new_notes_commit;
 git_reference *notes_ref = ((void*)0);

 error = retrieve_note_commit(&existing_notes_commit, &notes_ref_target,
   repo, notes_ref_in);

 if (error < 0)
  goto cleanup;

 error = git_note_commit_remove(&new_notes_commit, repo,
   existing_notes_commit, author, committer, oid);
 if (error < 0)
  goto cleanup;

 error = git_reference_create(&notes_ref, repo, notes_ref_target,
   &new_notes_commit, 1, ((void*)0));

cleanup:
 git__free(notes_ref_target);
 git_reference_free(notes_ref);
 git_commit_free(existing_notes_commit);
 return error;
}
