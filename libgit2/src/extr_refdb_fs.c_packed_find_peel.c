
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct packref {int flags; int peel; int oid; } ;
struct TYPE_3__ {int repo; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_tag ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_TAG ;
 int PACKREF_CANNOT_PEEL ;
 int PACKREF_HAS_PEEL ;
 int git_object_free (int *) ;
 scalar_t__ git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_oid_cpy (int *,int ) ;
 int git_tag_target_id (int *) ;

__attribute__((used)) static int packed_find_peel(refdb_fs_backend *backend, struct packref *ref)
{
 git_object *object;

 if (ref->flags & PACKREF_HAS_PEEL || ref->flags & PACKREF_CANNOT_PEEL)
  return 0;




 if (git_object_lookup(&object, backend->repo, &ref->oid, GIT_OBJECT_ANY) < 0)
  return -1;






 if (git_object_type(object) == GIT_OBJECT_TAG) {
  git_tag *tag = (git_tag *)object;




  git_oid_cpy(&ref->peel, git_tag_target_id(tag));
  ref->flags |= PACKREF_HAS_PEEL;






 }

 git_object_free(object);
 return 0;
}
