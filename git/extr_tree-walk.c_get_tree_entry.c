
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int find_tree_entry (struct repository*,struct tree_desc*,char const*,struct object_id*,unsigned short*) ;
 int free (void*) ;
 int init_tree_desc (struct tree_desc*,void*,unsigned long) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 void* read_object_with_reference (struct repository*,struct object_id const*,int ,unsigned long*,struct object_id*) ;
 int tree_type ;

int get_tree_entry(struct repository *r,
     const struct object_id *tree_oid,
     const char *name,
     struct object_id *oid,
     unsigned short *mode)
{
 int retval;
 void *tree;
 unsigned long size;
 struct object_id root;

 tree = read_object_with_reference(r, tree_oid, tree_type, &size, &root);
 if (!tree)
  return -1;

 if (name[0] == '\0') {
  oidcpy(oid, &root);
  free(tree);
  return 0;
 }

 if (!size) {
  retval = -1;
 } else {
  struct tree_desc t;
  init_tree_desc(&t, tree, size);
  retval = find_tree_entry(r, &t, name, oid, mode);
 }
 free(tree);
 return retval;
}
