
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;


 int CLIENT_SHALLOW ;
 scalar_t__ OBJ_COMMIT ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 int die (char*,char const*) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 char const* oid_to_hex (struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int the_repository ;

__attribute__((used)) static int process_shallow(const char *line, struct object_array *shallows)
{
 const char *arg;
 if (skip_prefix(line, "shallow ", &arg)) {
  struct object_id oid;
  struct object *object;
  if (get_oid_hex(arg, &oid))
   die("invalid shallow line: %s", line);
  object = parse_object(the_repository, &oid);
  if (!object)
   return 1;
  if (object->type != OBJ_COMMIT)
   die("invalid shallow object %s", oid_to_hex(&oid));
  if (!(object->flags & CLIENT_SHALLOW)) {
   object->flags |= CLIENT_SHALLOW;
   add_object_array(object, ((void*)0), shallows);
  }
  return 1;
 }

 return 0;
}
