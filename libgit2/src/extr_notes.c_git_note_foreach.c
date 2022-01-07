
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_note_iterator ;
typedef int (* git_note_foreach_cb ) (int *,int *,void*) ;


 int GIT_ITEROVER ;
 int git_error_set_after_callback (int) ;
 int git_note_iterator_free (int *) ;
 int git_note_iterator_new (int **,int *,char const*) ;
 int git_note_next (int *,int *,int *) ;

int git_note_foreach(
 git_repository *repo,
 const char *notes_ref,
 git_note_foreach_cb note_cb,
 void *payload)
{
 int error;
 git_note_iterator *iter = ((void*)0);
 git_oid note_id, annotated_id;

 if ((error = git_note_iterator_new(&iter, repo, notes_ref)) < 0)
  return error;

 while (!(error = git_note_next(&note_id, &annotated_id, iter))) {
  if ((error = note_cb(&note_id, &annotated_id, payload)) != 0) {
   git_error_set_after_callback(error);
   break;
  }
 }

 if (error == GIT_ITEROVER)
  error = 0;

 git_note_iterator_free(iter);
 return error;
}
