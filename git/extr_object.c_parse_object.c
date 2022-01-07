
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; scalar_t__ parsed; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 scalar_t__ OBJ_BLOB ;
 int _ (char*) ;
 scalar_t__ check_object_signature (struct object_id const*,void*,unsigned long,int *) ;
 int error (int ,int ) ;
 int free (void*) ;
 int lookup_blob (struct repository*,struct object_id const*) ;
 struct object* lookup_object (struct repository*,struct object_id const*) ;
 struct object_id* lookup_replace_object (struct repository*,struct object_id const*) ;
 scalar_t__ oid_object_info (struct repository*,struct object_id const*,int *) ;
 int oid_to_hex (struct object_id const*) ;
 int parse_blob_buffer (int ,int *,int ) ;
 struct object* parse_object_buffer (struct repository*,struct object_id const*,int,unsigned long,void*,int*) ;
 scalar_t__ repo_has_object_file (struct repository*,struct object_id const*) ;
 void* repo_read_object_file (struct repository*,struct object_id const*,int*,unsigned long*) ;
 int * type_name (int) ;

struct object *parse_object(struct repository *r, const struct object_id *oid)
{
 unsigned long size;
 enum object_type type;
 int eaten;
 const struct object_id *repl = lookup_replace_object(r, oid);
 void *buffer;
 struct object *obj;

 obj = lookup_object(r, oid);
 if (obj && obj->parsed)
  return obj;

 if ((obj && obj->type == OBJ_BLOB && repo_has_object_file(r, oid)) ||
     (!obj && repo_has_object_file(r, oid) &&
      oid_object_info(r, oid, ((void*)0)) == OBJ_BLOB)) {
  if (check_object_signature(repl, ((void*)0), 0, ((void*)0)) < 0) {
   error(_("hash mismatch %s"), oid_to_hex(oid));
   return ((void*)0);
  }
  parse_blob_buffer(lookup_blob(r, oid), ((void*)0), 0);
  return lookup_object(r, oid);
 }

 buffer = repo_read_object_file(r, oid, &type, &size);
 if (buffer) {
  if (check_object_signature(repl, buffer, size, type_name(type)) < 0) {
   free(buffer);
   error(_("hash mismatch %s"), oid_to_hex(repl));
   return ((void*)0);
  }

  obj = parse_object_buffer(r, oid, type, size,
       buffer, &eaten);
  if (!eaten)
   free(buffer);
  return obj;
 }
 return ((void*)0);
}
