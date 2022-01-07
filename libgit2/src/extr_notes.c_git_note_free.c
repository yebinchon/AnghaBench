
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* message; int author; int committer; } ;
typedef TYPE_1__ git_note ;


 int git__free (TYPE_1__*) ;
 int git_signature_free (int ) ;

void git_note_free(git_note *note)
{
 if (note == ((void*)0))
  return;

 git_signature_free(note->committer);
 git_signature_free(note->author);
 git__free(note->message);
 git__free(note);
}
