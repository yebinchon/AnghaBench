
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcnt; int commit; int blob; struct TYPE_4__* previous; } ;
typedef TYPE_1__ git_blame__origin ;


 int git__free (TYPE_1__*) ;
 int git_blob_free (int ) ;
 int git_commit_free (int ) ;

__attribute__((used)) static void origin_decref(git_blame__origin *o)
{
 if (o && --o->refcnt <= 0) {
  if (o->previous)
   origin_decref(o->previous);
  git_blob_free(o->blob);
  git_commit_free(o->commit);
  git__free(o);
 }
}
