
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_4__ {scalar_t__ theirs; scalar_t__ ours; scalar_t__ ancestor; } ;
typedef TYPE_1__ checkout_conflictdata ;


 int GIT_UNUSED (void*) ;
 int git__free (TYPE_1__*) ;
 TYPE_1__* git_vector_get (int const*,size_t) ;

int checkout_conflictdata_empty(
 const git_vector *conflicts, size_t idx, void *payload)
{
 checkout_conflictdata *conflict;

 GIT_UNUSED(payload);

 if ((conflict = git_vector_get(conflicts, idx)) == ((void*)0))
  return -1;

 if (conflict->ancestor || conflict->ours || conflict->theirs)
  return 0;

 git__free(conflict);
 return 1;
}
