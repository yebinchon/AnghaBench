
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int git__free (char*) ;
 int git_commit_free (int *) ;
 int git_note_commit_create (int *,int *,int *,int *,int const*,int const*,int const*,char const*,int) ;
 int git_oid_cpy (int *,int *) ;
 int git_reference_create (int **,int *,char*,int *,int,int *) ;
 int git_reference_free (int *) ;
 int retrieve_note_commit (int **,char**,int *,char const*) ;

int git_note_create(
 git_oid *out,
 git_repository *repo,
 const char *notes_ref_in,
 const git_signature *author,
 const git_signature *committer,
 const git_oid *oid,
 const char *note,
 int allow_note_overwrite)
{
 int error;
 char *notes_ref = ((void*)0);
 git_commit *existing_notes_commit = ((void*)0);
 git_reference *ref = ((void*)0);
 git_oid notes_blob_oid, notes_commit_oid;

 error = retrieve_note_commit(&existing_notes_commit, &notes_ref,
   repo, notes_ref_in);

 if (error < 0 && error != GIT_ENOTFOUND)
  goto cleanup;

 error = git_note_commit_create(&notes_commit_oid,
   &notes_blob_oid,
   repo, existing_notes_commit, author,
   committer, oid, note,
   allow_note_overwrite);
 if (error < 0)
  goto cleanup;

 error = git_reference_create(&ref, repo, notes_ref,
    &notes_commit_oid, 1, ((void*)0));

 if (out != ((void*)0))
  git_oid_cpy(out, &notes_blob_oid);

cleanup:
 git__free(notes_ref);
 git_commit_free(existing_notes_commit);
 git_reference_free(ref);
 return error;
}
