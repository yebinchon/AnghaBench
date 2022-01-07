
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_11__ {int blob; } ;
typedef TYPE_1__ git_blame__origin ;
struct TYPE_12__ {TYPE_1__* suspect; struct TYPE_12__* next; } ;
typedef TYPE_2__ git_blame__entry ;
struct TYPE_13__ {TYPE_2__* ent; int repository; } ;
typedef TYPE_3__ git_blame ;


 int GIT_OBJECT_BLOB ;
 int git_blob_id (int ) ;
 scalar_t__ git_object_lookup (int **,int ,int ,int ) ;
 int origin_decref (TYPE_1__*) ;
 int origin_incref (TYPE_1__*) ;
 int same_suspect (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int pass_whole_blame(git_blame *blame,
  git_blame__origin *origin, git_blame__origin *porigin)
{
 git_blame__entry *e;

 if (!porigin->blob &&
     git_object_lookup((git_object**)&porigin->blob, blame->repository,
    git_blob_id(origin->blob), GIT_OBJECT_BLOB) < 0)
  return -1;
 for (e=blame->ent; e; e=e->next) {
  if (!same_suspect(e->suspect, origin))
   continue;
  origin_incref(porigin);
  origin_decref(e->suspect);
  e->suspect = porigin;
 }

 return 0;
}
