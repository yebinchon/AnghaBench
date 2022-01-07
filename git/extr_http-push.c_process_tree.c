
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct object {int flags; int oid; } ;
struct tree {int size; int buffer; struct object object; } ;
struct object_list {int dummy; } ;
struct name_entry {int oid; int mode; } ;


 int LOCAL ;


 int SEEN ;
 int UNINTERESTING ;
 struct object_list** add_one_object (struct object*,struct object_list**) ;
 int die (char*,int ) ;
 int free_tree_buffer (struct tree*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int lookup_blob (int ,int *) ;
 struct tree* lookup_tree (int ,int *) ;
 int object_type (int ) ;
 int oid_to_hex (int *) ;
 scalar_t__ parse_tree (struct tree*) ;
 struct object_list** process_blob (int ,struct object_list**) ;
 int the_repository ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static struct object_list **process_tree(struct tree *tree,
      struct object_list **p)
{
 struct object *obj = &tree->object;
 struct tree_desc desc;
 struct name_entry entry;

 obj->flags |= LOCAL;

 if (obj->flags & (UNINTERESTING | SEEN))
  return p;
 if (parse_tree(tree) < 0)
  die("bad tree object %s", oid_to_hex(&obj->oid));

 obj->flags |= SEEN;
 p = add_one_object(obj, p);

 init_tree_desc(&desc, tree->buffer, tree->size);

 while (tree_entry(&desc, &entry))
  switch (object_type(entry.mode)) {
  case 128:
   p = process_tree(lookup_tree(the_repository, &entry.oid),
      p);
   break;
  case 129:
   p = process_blob(lookup_blob(the_repository, &entry.oid),
      p);
   break;
  default:

   break;
  }

 free_tree_buffer(tree);
 return p;
}
