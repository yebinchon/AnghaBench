
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int oid; int mode; } ;




 int free_tree_buffer (struct tree*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int lookup_blob (struct repository*,int *) ;
 int lookup_tree (struct repository*,int *) ;
 int mark_blob_uninteresting (int ) ;
 int mark_tree_uninteresting (struct repository*,int ) ;
 int object_type (int ) ;
 scalar_t__ parse_tree_gently (struct tree*,int) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static void mark_tree_contents_uninteresting(struct repository *r,
          struct tree *tree)
{
 struct tree_desc desc;
 struct name_entry entry;

 if (parse_tree_gently(tree, 1) < 0)
  return;

 init_tree_desc(&desc, tree->buffer, tree->size);
 while (tree_entry(&desc, &entry)) {
  switch (object_type(entry.mode)) {
  case 128:
   mark_tree_uninteresting(r, lookup_tree(r, &entry.oid));
   break;
  case 129:
   mark_blob_uninteresting(lookup_blob(r, &entry.oid));
   break;
  default:

   break;
  }
 }





 free_tree_buffer(tree);
}
