
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int dummy; } ;
struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct object {scalar_t__ type; int oid; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_BLOB ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 int error (char*,int ,char*) ;
 char* oid_to_hex (int *) ;
 scalar_t__ process_commit (struct walker*,struct commit*) ;
 scalar_t__ process_tag (struct walker*,struct tag*) ;
 scalar_t__ process_tree (struct walker*,struct tree*) ;
 int type_name (scalar_t__) ;

__attribute__((used)) static int process_object(struct walker *walker, struct object *obj)
{
 if (obj->type == OBJ_COMMIT) {
  if (process_commit(walker, (struct commit *)obj))
   return -1;
  return 0;
 }
 if (obj->type == OBJ_TREE) {
  if (process_tree(walker, (struct tree *)obj))
   return -1;
  return 0;
 }
 if (obj->type == OBJ_BLOB) {
  return 0;
 }
 if (obj->type == OBJ_TAG) {
  if (process_tag(walker, (struct tag *)obj))
   return -1;
  return 0;
 }
 return error("Unable to determine requirements "
       "of type %s for %s",
       type_name(obj->type), oid_to_hex(&obj->oid));
}
