
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {scalar_t__ type; int oid; } ;
typedef enum peel_status { ____Placeholder_peel_status } peel_status ;


 scalar_t__ OBJ_NONE ;
 scalar_t__ OBJ_TAG ;
 int PEEL_INVALID ;
 int PEEL_NON_TAG ;
 int PEEL_PEELED ;
 struct object* deref_tag_noverify (struct object*) ;
 struct object* lookup_unknown_object (struct object_id const*) ;
 int object_as_type (int ,struct object*,int,int ) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int oidcpy (struct object_id*,int *) ;
 int the_repository ;

enum peel_status peel_object(const struct object_id *name, struct object_id *oid)
{
 struct object *o = lookup_unknown_object(name);

 if (o->type == OBJ_NONE) {
  int type = oid_object_info(the_repository, name, ((void*)0));
  if (type < 0 || !object_as_type(the_repository, o, type, 0))
   return PEEL_INVALID;
 }

 if (o->type != OBJ_TAG)
  return PEEL_NON_TAG;

 o = deref_tag_noverify(o);
 if (!o)
  return PEEL_INVALID;

 oidcpy(oid, &o->oid);
 return PEEL_PEELED;
}
