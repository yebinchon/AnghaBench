
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int dummy; } ;
struct tree_desc {int dummy; } ;
struct object {int dummy; } ;
struct tree {struct object object; int size; int buffer; } ;
struct name_entry {int oid; int mode; } ;
struct blob {struct object object; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int free_tree_buffer (struct tree*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 struct blob* lookup_blob (int ,int *) ;
 struct tree* lookup_tree (int ,int *) ;
 scalar_t__ parse_tree (struct tree*) ;
 scalar_t__ process (struct walker*,struct object*) ;
 int the_repository ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static int process_tree(struct walker *walker, struct tree *tree)
{
 struct tree_desc desc;
 struct name_entry entry;

 if (parse_tree(tree))
  return -1;

 init_tree_desc(&desc, tree->buffer, tree->size);
 while (tree_entry(&desc, &entry)) {
  struct object *obj = ((void*)0);


  if (S_ISGITLINK(entry.mode))
   continue;
  if (S_ISDIR(entry.mode)) {
   struct tree *tree = lookup_tree(the_repository,
       &entry.oid);
   if (tree)
    obj = &tree->object;
  }
  else {
   struct blob *blob = lookup_blob(the_repository,
       &entry.oid);
   if (blob)
    obj = &blob->object;
  }
  if (!obj || process(walker, obj))
   return -1;
 }
 free_tree_buffer(tree);
 return 0;
}
