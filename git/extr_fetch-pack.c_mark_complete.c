
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tag {TYPE_1__* tagged; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct TYPE_4__ {int flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {struct object_id const oid; } ;


 int COMPLETE ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 int commit_list_insert (struct commit*,int *) ;
 int complete ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int mark_complete(const struct object_id *oid)
{
 struct object *o = parse_object(the_repository, oid);

 while (o && o->type == OBJ_TAG) {
  struct tag *t = (struct tag *) o;
  if (!t->tagged)
   break;
  o->flags |= COMPLETE;
  o = parse_object(the_repository, &t->tagged->oid);
 }
 if (o && o->type == OBJ_COMMIT) {
  struct commit *commit = (struct commit *)o;
  if (!(commit->object.flags & COMPLETE)) {
   commit->object.flags |= COMPLETE;
   commit_list_insert(commit, &complete);
  }
 }
 return 0;
}
