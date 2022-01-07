
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
typedef scalar_t__ git_off_t ;
struct TYPE_6__ {struct TYPE_6__* message; int committer; int author; int id; } ;
typedef TYPE_1__ git_note ;
typedef int git_commit ;
typedef int git_blob ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_BLOBSIZE (scalar_t__) ;
 TYPE_1__* git__malloc (int) ;
 TYPE_1__* git__strndup (int ,size_t) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int git_commit_author (int *) ;
 int git_commit_committer (int *) ;
 int git_oid_cpy (int *,int *) ;
 scalar_t__ git_signature_dup (int *,int ) ;

__attribute__((used)) static int note_new(
 git_note **out,
 git_oid *note_oid,
 git_commit *commit,
 git_blob *blob)
{
 git_note *note = ((void*)0);
 git_off_t blobsize;

 note = git__malloc(sizeof(git_note));
 GIT_ERROR_CHECK_ALLOC(note);

 git_oid_cpy(&note->id, note_oid);

 if (git_signature_dup(&note->author, git_commit_author(commit)) < 0 ||
  git_signature_dup(&note->committer, git_commit_committer(commit)) < 0)
  return -1;

 blobsize = git_blob_rawsize(blob);
 GIT_ERROR_CHECK_BLOBSIZE(blobsize);

 note->message = git__strndup(git_blob_rawcontent(blob), (size_t)blobsize);
 GIT_ERROR_CHECK_ALLOC(note->message);

 *out = note;
 return 0;
}
