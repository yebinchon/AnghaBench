
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tag ;
struct TYPE_3__ {int pb; int repo; } ;
typedef TYPE_1__ git_push ;
typedef int git_oid ;
typedef int git_object ;


 scalar_t__ GIT_OBJECT_TAG ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int ,int *,scalar_t__) ;
 scalar_t__ git_object_type (int *) ;
 int git_packbuilder_insert (int ,int ,int *) ;
 int git_tag_target (int **,int *) ;

__attribute__((used)) static int enqueue_tag(git_object **out, git_push *push, git_oid *id)
{
 git_object *obj = ((void*)0), *target = ((void*)0);
 int error;

 if ((error = git_object_lookup(&obj, push->repo, id, GIT_OBJECT_TAG)) < 0)
  return error;

 while (git_object_type(obj) == GIT_OBJECT_TAG) {
  if ((error = git_packbuilder_insert(push->pb, git_object_id(obj), ((void*)0))) < 0)
   break;

  if ((error = git_tag_target(&target, (git_tag *) obj)) < 0)
   break;

  git_object_free(obj);
  obj = target;
 }

 if (error < 0)
  git_object_free(obj);
 else
  *out = obj;

 return error;
}
