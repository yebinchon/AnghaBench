
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_note ;
typedef int git_commit ;


 int git__free (char*) ;
 int git_commit_free (int *) ;
 int git_note_commit_read (int **,int *,int *,int const*) ;
 int retrieve_note_commit (int **,char**,int *,char const*) ;

int git_note_read(git_note **out, git_repository *repo,
    const char *notes_ref_in, const git_oid *oid)
{
 int error;
 char *notes_ref = ((void*)0);
 git_commit *commit = ((void*)0);

 error = retrieve_note_commit(&commit, &notes_ref, repo, notes_ref_in);

 if (error < 0)
  goto cleanup;

 error = git_note_commit_read(out, repo, commit, oid);

cleanup:
 git__free(notes_ref);
 git_commit_free(commit);
 return error;
}
