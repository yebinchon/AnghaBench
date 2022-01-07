
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {struct object* tagged; } ;
struct repository {int dummy; } ;
struct object {int type; int oid; int parsed; } ;
struct commit {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {struct object object; } ;


 int OBJ_ANY ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 int error (char*,int,char const*,int ,int ) ;
 int parse_object (struct repository*,int *) ;
 TYPE_1__* repo_get_commit_tree (struct repository*,struct commit*) ;
 int strlen (char const*) ;
 int type_name (int) ;

struct object *repo_peel_to_type(struct repository *r, const char *name, int namelen,
     struct object *o, enum object_type expected_type)
{
 if (name && !namelen)
  namelen = strlen(name);
 while (1) {
  if (!o || (!o->parsed && !parse_object(r, &o->oid)))
   return ((void*)0);
  if (expected_type == OBJ_ANY || o->type == expected_type)
   return o;
  if (o->type == OBJ_TAG)
   o = ((struct tag*) o)->tagged;
  else if (o->type == OBJ_COMMIT)
   o = &(repo_get_commit_tree(r, ((struct commit *)o))->object);
  else {
   if (name)
    error("%.*s: expected %s type, but the object "
          "dereferences to %s type",
          namelen, name, type_name(expected_type),
          type_name(o->type));
   return ((void*)0);
  }
 }
}
