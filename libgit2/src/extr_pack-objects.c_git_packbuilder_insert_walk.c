
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct walk_object {scalar_t__ uninteresting; scalar_t__ seen; } ;
struct TYPE_4__ {int user_input; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_packbuilder ;
typedef int git_oid ;


 int GIT_ITEROVER ;
 int assert (int) ;
 int git_revwalk_next (int *,TYPE_1__*) ;
 int insert_commit (int *,struct walk_object*) ;
 int mark_edges_uninteresting (int *,int ) ;
 int retrieve_object (struct walk_object**,int *,int *) ;

int git_packbuilder_insert_walk(git_packbuilder *pb, git_revwalk *walk)
{
 int error;
 git_oid id;
 struct walk_object *obj;

 assert(pb && walk);

 if ((error = mark_edges_uninteresting(pb, walk->user_input)) < 0)
  return error;
 while ((error = git_revwalk_next(&id, walk)) == 0) {
  if ((error = retrieve_object(&obj, pb, &id)) < 0)
   return error;

  if (obj->seen || obj->uninteresting)
   continue;

  if ((error = insert_commit(pb, obj)) < 0)
   return error;
 }

 if (error == GIT_ITEROVER)
  error = 0;

 return error;
}
