
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_note_iterator ;
typedef int git_commit ;


 int git__free (char*) ;
 int git_commit_free (int *) ;
 int git_note_commit_iterator_new (int **,int *) ;
 int retrieve_note_commit (int **,char**,int *,char const*) ;

int git_note_iterator_new(
 git_note_iterator **it,
 git_repository *repo,
 const char *notes_ref_in)
{
 int error;
 git_commit *commit = ((void*)0);
 char *notes_ref;

 error = retrieve_note_commit(&commit, &notes_ref, repo, notes_ref_in);
 if (error < 0)
  goto cleanup;

 error = git_note_commit_iterator_new(it, commit);

cleanup:
 git__free(notes_ref);
 git_commit_free(commit);

 return error;
}
