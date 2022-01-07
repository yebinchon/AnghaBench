
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing; int repo; } ;
struct object_id {int dummy; } ;
struct object {unsigned int flags; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_COMMIT ;
 int die (char*,char const*) ;
 scalar_t__ is_promisor_object (struct object_id const*) ;
 struct commit* lookup_commit (int ,struct object_id const*) ;
 scalar_t__ oid_object_info (int ,struct object_id const*,int *) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int repo_parse_commit (int ,struct commit*) ;

__attribute__((used)) static struct object *get_reference(struct rev_info *revs, const char *name,
        const struct object_id *oid,
        unsigned int flags)
{
 struct object *object;





 if (oid_object_info(revs->repo, oid, ((void*)0)) == OBJ_COMMIT) {
  struct commit *c = lookup_commit(revs->repo, oid);
  if (!repo_parse_commit(revs->repo, c))
   object = (struct object *) c;
  else
   object = ((void*)0);
 } else {
  object = parse_object(revs->repo, oid);
 }

 if (!object) {
  if (revs->ignore_missing)
   return object;
  if (revs->exclude_promisor_objects && is_promisor_object(oid))
   return ((void*)0);
  die("bad object %s", name);
 }
 object->flags |= flags;
 return object;
}
