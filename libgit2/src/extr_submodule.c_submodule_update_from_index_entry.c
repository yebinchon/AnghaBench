
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int index_oid; } ;
typedef TYPE_1__ git_submodule ;
struct TYPE_6__ {int id; int mode; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_SUBMODULE_STATUS_IN_INDEX ;
 int GIT_SUBMODULE_STATUS__INDEX_MULTIPLE_ENTRIES ;
 int GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE ;
 int GIT_SUBMODULE_STATUS__INDEX_OID_VALID ;
 int S_ISGITLINK (int ) ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static void submodule_update_from_index_entry(
 git_submodule *sm, const git_index_entry *ie)
{
 bool already_found = (sm->flags & GIT_SUBMODULE_STATUS_IN_INDEX) != 0;

 if (!S_ISGITLINK(ie->mode)) {
  if (!already_found)
   sm->flags |= GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE;
 } else {
  if (already_found)
   sm->flags |= GIT_SUBMODULE_STATUS__INDEX_MULTIPLE_ENTRIES;
  else
   git_oid_cpy(&sm->index_oid, &ie->id);

  sm->flags |= GIT_SUBMODULE_STATUS_IN_INDEX |
   GIT_SUBMODULE_STATUS__INDEX_OID_VALID;
 }
}
