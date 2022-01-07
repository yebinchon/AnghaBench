
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int commit; } ;
typedef TYPE_2__ git_blame__origin ;
struct TYPE_15__ {int guilty; int is_boundary; TYPE_2__* suspect; struct TYPE_15__* next; } ;
typedef TYPE_3__ git_blame__entry ;
struct TYPE_13__ {int oldest_commit; } ;
struct TYPE_16__ {TYPE_1__ options; TYPE_3__* ent; } ;
typedef TYPE_4__ git_blame ;


 int coalesce (TYPE_4__*) ;
 int git_commit_id (int ) ;
 int git_oid_cmp (int ,int *) ;
 int origin_decref (TYPE_2__*) ;
 int origin_incref (TYPE_2__*) ;
 int pass_blame (TYPE_4__*,TYPE_2__*,int ) ;
 scalar_t__ same_suspect (TYPE_2__*,TYPE_2__*) ;

int git_blame__like_git(git_blame *blame, uint32_t opt)
{
 int error = 0;

 while (1) {
  git_blame__entry *ent;
  git_blame__origin *suspect = ((void*)0);


  for (ent = blame->ent; !suspect && ent; ent = ent->next)
   if (!ent->guilty)
    suspect = ent->suspect;
  if (!suspect)
   break;


  origin_incref(suspect);

  if ((error = pass_blame(blame, suspect, opt)) < 0)
   break;


  for (ent = blame->ent; ent; ent = ent->next) {
   if (same_suspect(ent->suspect, suspect)) {
    ent->guilty = 1;
    ent->is_boundary = !git_oid_cmp(
      git_commit_id(suspect->commit),
      &blame->options.oldest_commit);
   }
  }
  origin_decref(suspect);
 }

 if (!error)
  coalesce(blame);

 return error;
}
