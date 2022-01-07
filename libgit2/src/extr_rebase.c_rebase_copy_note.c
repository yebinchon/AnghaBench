
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_3__ {int repo; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_oid ;
typedef int git_note ;


 int GIT_ENOTFOUND ;
 int git_error_clear () ;
 int git_note_author (int *) ;
 int git_note_create (int *,int ,char const*,int ,int const*,int *,int ,int ) ;
 int git_note_free (int *) ;
 int git_note_message (int *) ;
 int git_note_read (int **,int ,char const*,int *) ;
 int git_signature_default (int **,int ) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

__attribute__((used)) static int rebase_copy_note(
 git_rebase *rebase,
 const char *notes_ref,
 git_oid *from,
 git_oid *to,
 const git_signature *committer)
{
 git_note *note = ((void*)0);
 git_oid note_id;
 git_signature *who = ((void*)0);
 int error;

 if ((error = git_note_read(&note, rebase->repo, notes_ref, from)) < 0) {
  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   error = 0;
  }

  goto done;
 }

 if (!committer) {
  if((error = git_signature_default(&who, rebase->repo)) < 0) {
   if (error != GIT_ENOTFOUND ||
    (error = git_signature_now(&who, "unknown", "unknown")) < 0)
    goto done;

   git_error_clear();
  }

  committer = who;
 }

 error = git_note_create(&note_id, rebase->repo, notes_ref,
  git_note_author(note), committer, to, git_note_message(note), 0);

done:
 git_note_free(note);
 git_signature_free(who);

 return error;
}
