
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;






 int die (char*,int) ;
 void* lookup_blob (struct repository*,struct object_id const*) ;
 void* lookup_commit (struct repository*,struct object_id const*) ;
 void* lookup_tag (struct repository*,struct object_id const*) ;
 void* lookup_tree (struct repository*,struct object_id const*) ;

__attribute__((used)) static void *lookup_object_by_type(struct repository *r,
       const struct object_id *oid,
       enum object_type type)
{
 switch (type) {
 case 130:
  return lookup_commit(r, oid);
 case 128:
  return lookup_tree(r, oid);
 case 129:
  return lookup_tag(r, oid);
 case 131:
  return lookup_blob(r, oid);
 default:
  die("BUG: unknown object type %d", type);
 }
}
