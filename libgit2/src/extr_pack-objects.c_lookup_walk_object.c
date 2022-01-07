
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct walk_object {int id; } ;
struct TYPE_3__ {int object_pool; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;


 int git_error_set_oom () ;
 int git_oid_cpy (int *,int const*) ;
 struct walk_object* git_pool_mallocz (int *,int) ;

__attribute__((used)) static int lookup_walk_object(struct walk_object **out, git_packbuilder *pb, const git_oid *id)
{
 struct walk_object *obj;

 obj = git_pool_mallocz(&pb->object_pool, 1);
 if (!obj) {
  git_error_set_oom();
  return -1;
 }

 git_oid_cpy(&obj->id, id);

 *out = obj;
 return 0;
}
