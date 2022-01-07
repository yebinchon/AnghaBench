
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {scalar_t__ parsed; } ;
struct tree {struct object object; int buffer; } ;
struct tag {struct object object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit {struct object object; } ;
struct blob {struct object object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int OBJ_COMMIT ;
 int OBJ_TAG ;
 int OBJ_TREE ;
 int _ (char*) ;
 int get_cached_commit_buffer (struct repository*,struct commit*,int *) ;
 struct blob* lookup_blob (struct repository*,struct object_id const*) ;
 struct commit* lookup_commit (struct repository*,struct object_id const*) ;
 struct tag* lookup_tag (struct repository*,struct object_id const*) ;
 struct tree* lookup_tree (struct repository*,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ parse_blob_buffer (struct blob*,void*,unsigned long) ;
 scalar_t__ parse_commit_buffer (struct repository*,struct commit*,void*,unsigned long,int) ;
 scalar_t__ parse_tag_buffer (struct repository*,struct tag*,void*,unsigned long) ;
 scalar_t__ parse_tree_buffer (struct tree*,void*,unsigned long) ;
 int set_commit_buffer (struct repository*,struct commit*,void*,unsigned long) ;
 int warning (int ,int ,int) ;

struct object *parse_object_buffer(struct repository *r, const struct object_id *oid, enum object_type type, unsigned long size, void *buffer, int *eaten_p)
{
 struct object *obj;
 *eaten_p = 0;

 obj = ((void*)0);
 if (type == OBJ_BLOB) {
  struct blob *blob = lookup_blob(r, oid);
  if (blob) {
   if (parse_blob_buffer(blob, buffer, size))
    return ((void*)0);
   obj = &blob->object;
  }
 } else if (type == OBJ_TREE) {
  struct tree *tree = lookup_tree(r, oid);
  if (tree) {
   obj = &tree->object;
   if (!tree->buffer)
    tree->object.parsed = 0;
   if (!tree->object.parsed) {
    if (parse_tree_buffer(tree, buffer, size))
     return ((void*)0);
    *eaten_p = 1;
   }
  }
 } else if (type == OBJ_COMMIT) {
  struct commit *commit = lookup_commit(r, oid);
  if (commit) {
   if (parse_commit_buffer(r, commit, buffer, size, 1))
    return ((void*)0);
   if (!get_cached_commit_buffer(r, commit, ((void*)0))) {
    set_commit_buffer(r, commit, buffer, size);
    *eaten_p = 1;
   }
   obj = &commit->object;
  }
 } else if (type == OBJ_TAG) {
  struct tag *tag = lookup_tag(r, oid);
  if (tag) {
   if (parse_tag_buffer(r, tag, buffer, size))
          return ((void*)0);
   obj = &tag->object;
  }
 } else {
  warning(_("object %s has unknown type id %d"), oid_to_hex(oid), type);
  obj = ((void*)0);
 }
 return obj;
}
