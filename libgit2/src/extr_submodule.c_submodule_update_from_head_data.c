
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_3__ {int flags; int head_oid; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_oid ;


 int GIT_SUBMODULE_STATUS_IN_HEAD ;
 int GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE ;
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ;
 int S_ISGITLINK (int ) ;
 int git_oid_cpy (int *,int const*) ;

__attribute__((used)) static void submodule_update_from_head_data(
 git_submodule *sm, mode_t mode, const git_oid *id)
{
 if (!S_ISGITLINK(mode))
  sm->flags |= GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE;
 else {
  git_oid_cpy(&sm->head_oid, id);

  sm->flags |= GIT_SUBMODULE_STATUS_IN_HEAD |
   GIT_SUBMODULE_STATUS__HEAD_OID_VALID;
 }
}
