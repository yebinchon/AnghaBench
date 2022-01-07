
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_oid ;


 unsigned int GIT_SUBMODULE_STATUS_INDEX_ADDED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_DELETED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS__INDEX_FLAGS ;
 int git_oid_equal (int const*,int const*) ;
 int * git_submodule_head_id (int *) ;
 int * git_submodule_index_id (int *) ;

__attribute__((used)) static void submodule_get_index_status(unsigned int *status, git_submodule *sm)
{
 const git_oid *head_oid = git_submodule_head_id(sm);
 const git_oid *index_oid = git_submodule_index_id(sm);

 *status = *status & ~GIT_SUBMODULE_STATUS__INDEX_FLAGS;

 if (!head_oid) {
  if (index_oid)
   *status |= GIT_SUBMODULE_STATUS_INDEX_ADDED;
 }
 else if (!index_oid)
  *status |= GIT_SUBMODULE_STATUS_INDEX_DELETED;
 else if (!git_oid_equal(head_oid, index_oid))
  *status |= GIT_SUBMODULE_STATUS_INDEX_MODIFIED;
}
