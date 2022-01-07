
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int const head_oid; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_oid ;


 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ;
 int assert (TYPE_1__*) ;

const git_oid *git_submodule_head_id(git_submodule *submodule)
{
 assert(submodule);

 if (submodule->flags & GIT_SUBMODULE_STATUS__HEAD_OID_VALID)
  return &submodule->head_oid;
 else
  return ((void*)0);
}
