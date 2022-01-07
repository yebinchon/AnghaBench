
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int * owner; } ;
struct TYPE_5__ {int do_fsync; TYPE_1__ rc; } ;
typedef TYPE_2__ git_odb ;


 int GIT_CONFIGMAP_FSYNCOBJECTFILES ;
 int GIT_ERROR_ODB ;
 int GIT_ODB_CAP_FROM_OWNER ;
 int git_error_set (int ,char*) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;

int git_odb__set_caps(git_odb *odb, int caps)
{
 if (caps == GIT_ODB_CAP_FROM_OWNER) {
  git_repository *repo = odb->rc.owner;
  int val;

  if (!repo) {
   git_error_set(GIT_ERROR_ODB, "cannot access repository to set odb caps");
   return -1;
  }

  if (!git_repository__configmap_lookup(&val, repo, GIT_CONFIGMAP_FSYNCOBJECTFILES))
   odb->do_fsync = !!val;
 }

 return 0;
}
