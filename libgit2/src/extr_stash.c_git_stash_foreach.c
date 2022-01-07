
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* git_stash_cb ) (size_t,int ,int ,void*) ;
typedef int git_repository ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_REFS_STASH_FILE ;
 int git_error_clear () ;
 int git_error_set_after_callback (int) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;
 int * git_reflog_entry_byindex (int *,size_t) ;
 int git_reflog_entry_id_new (int const*) ;
 int git_reflog_entry_message (int const*) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,int ) ;

int git_stash_foreach(
 git_repository *repo,
 git_stash_cb callback,
 void *payload)
{
 git_reference *stash;
 git_reflog *reflog = ((void*)0);
 int error;
 size_t i, max;
 const git_reflog_entry *entry;

 error = git_reference_lookup(&stash, repo, GIT_REFS_STASH_FILE);
 if (error == GIT_ENOTFOUND) {
  git_error_clear();
  return 0;
 }
 if (error < 0)
  goto cleanup;

 if ((error = git_reflog_read(&reflog, repo, GIT_REFS_STASH_FILE)) < 0)
  goto cleanup;

 max = git_reflog_entrycount(reflog);
 for (i = 0; i < max; i++) {
  entry = git_reflog_entry_byindex(reflog, i);

  error = callback(i,
   git_reflog_entry_message(entry),
   git_reflog_entry_id_new(entry),
   payload);

  if (error) {
   git_error_set_after_callback(error);
   break;
  }
 }

cleanup:
 git_reference_free(stash);
 git_reflog_free(reflog);
 return error;
}
