
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tag ;
struct TYPE_6__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_ERROR_INVALID ;
 int GIT_OBJECT_ANY ;




 int assert (int) ;
 int git_error_set (int ,char*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int const*,int ) ;
 int git_object_type (int *) ;
 int git_packbuilder_insert (TYPE_1__*,int const*,char const*) ;
 int git_packbuilder_insert_commit (TYPE_1__*,int const*) ;
 int git_packbuilder_insert_tree (TYPE_1__*,int const*) ;
 int * git_tag_target_id (int *) ;

int git_packbuilder_insert_recur(git_packbuilder *pb, const git_oid *id, const char *name)
{
 git_object *obj;
 int error;

 assert(pb && id);

 if ((error = git_object_lookup(&obj, pb->repo, id, GIT_OBJECT_ANY)) < 0)
  return error;

 switch (git_object_type(obj)) {
 case 131:
  error = git_packbuilder_insert(pb, id, name);
  break;
 case 128:
  error = git_packbuilder_insert_tree(pb, id);
  break;
 case 130:
  error = git_packbuilder_insert_commit(pb, id);
  break;
 case 129:
  if ((error = git_packbuilder_insert(pb, id, name)) < 0)
   goto cleanup;
  error = git_packbuilder_insert_recur(pb, git_tag_target_id((git_tag *) obj), ((void*)0));
  break;

 default:
  git_error_set(GIT_ERROR_INVALID, "unknown object type");
  error = -1;
 }

cleanup:
 git_object_free(obj);
 return error;
}
