
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int path; int repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_index_entry ;
typedef int git_index ;


 int GIT_SUBMODULE_STATUS_IN_INDEX ;
 int GIT_SUBMODULE_STATUS__INDEX_OID_VALID ;
 int * git_index_get_bypath (int *,int ,int ) ;
 scalar_t__ git_repository_index__weakptr (int **,int ) ;
 int submodule_update_from_index_entry (TYPE_1__*,int const*) ;

__attribute__((used)) static int submodule_update_index(git_submodule *sm)
{
 git_index *index;
 const git_index_entry *ie;

 if (git_repository_index__weakptr(&index, sm->repo) < 0)
  return -1;

 sm->flags = sm->flags &
  ~(GIT_SUBMODULE_STATUS_IN_INDEX |
    GIT_SUBMODULE_STATUS__INDEX_OID_VALID);

 if (!(ie = git_index_get_bypath(index, sm->path, 0)))
  return 0;

 submodule_update_from_index_entry(sm, ie);

 return 0;
}
