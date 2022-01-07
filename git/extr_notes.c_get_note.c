
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;
struct notes_tree {int root; int initialized; } ;
struct leaf_node {struct object_id const val_oid; } ;


 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 struct leaf_node* note_tree_find (struct notes_tree*,int ,int ,int ) ;

const struct object_id *get_note(struct notes_tree *t,
  const struct object_id *oid)
{
 struct leaf_node *found;

 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);
 found = note_tree_find(t, t->root, 0, oid->hash);
 return found ? &found->val_oid : ((void*)0);
}
