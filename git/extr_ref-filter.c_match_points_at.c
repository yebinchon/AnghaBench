
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;


 scalar_t__ OBJ_TAG ;
 int _ (char*) ;
 int die (int ,char const*) ;
 struct object_id* get_tagged_oid (struct tag*) ;
 scalar_t__ oid_array_lookup (struct oid_array*,struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static const struct object_id *match_points_at(struct oid_array *points_at,
            const struct object_id *oid,
            const char *refname)
{
 const struct object_id *tagged_oid = ((void*)0);
 struct object *obj;

 if (oid_array_lookup(points_at, oid) >= 0)
  return oid;
 obj = parse_object(the_repository, oid);
 if (!obj)
  die(_("malformed object at '%s'"), refname);
 if (obj->type == OBJ_TAG)
  tagged_oid = get_tagged_oid((struct tag *)obj);
 if (tagged_oid && oid_array_lookup(points_at, tagged_oid) >= 0)
  return tagged_oid;
 return ((void*)0);
}
