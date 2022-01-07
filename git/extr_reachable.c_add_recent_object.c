
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct recent_data {scalar_t__ timestamp; int revs; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;






 int add_pending_object (int ,struct object*,char*) ;
 int die (char*,int ,...) ;
 scalar_t__ lookup_blob (int ,struct object_id const*) ;
 scalar_t__ lookup_tree (int ,struct object_id const*) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int oid_to_hex (struct object_id const*) ;
 struct object* parse_object_or_die (struct object_id const*,int *) ;
 int the_repository ;
 int type_name (int) ;

__attribute__((used)) static void add_recent_object(const struct object_id *oid,
         timestamp_t mtime,
         struct recent_data *data)
{
 struct object *obj;
 enum object_type type;

 if (mtime <= data->timestamp)
  return;
 type = oid_object_info(the_repository, oid, ((void*)0));
 if (type < 0)
  die("unable to get object info for %s", oid_to_hex(oid));

 switch (type) {
 case 129:
 case 130:
  obj = parse_object_or_die(oid, ((void*)0));
  break;
 case 128:
  obj = (struct object *)lookup_tree(the_repository, oid);
  break;
 case 131:
  obj = (struct object *)lookup_blob(the_repository, oid);
  break;
 default:
  die("unknown object type for %s: %s",
      oid_to_hex(oid), type_name(type));
 }

 if (!obj)
  die("unable to lookup %s", oid_to_hex(oid));

 add_pending_object(data->revs, obj, "");
}
