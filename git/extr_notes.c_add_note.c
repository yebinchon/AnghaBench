
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct notes_tree {int dirty; int root; scalar_t__ combine_notes; int initialized; } ;
struct leaf_node {int val_oid; int key_oid; } ;
typedef scalar_t__ combine_notes_fn ;


 int PTR_TYPE_NOTE ;
 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 int note_tree_insert (struct notes_tree*,int ,int ,struct leaf_node*,int ,scalar_t__) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ xmalloc (int) ;

int add_note(struct notes_tree *t, const struct object_id *object_oid,
  const struct object_id *note_oid, combine_notes_fn combine_notes)
{
 struct leaf_node *l;

 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);
 t->dirty = 1;
 if (!combine_notes)
  combine_notes = t->combine_notes;
 l = (struct leaf_node *) xmalloc(sizeof(struct leaf_node));
 oidcpy(&l->key_oid, object_oid);
 oidcpy(&l->val_oid, note_oid);
 return note_tree_insert(t, t->root, 0, l, PTR_TYPE_NOTE, combine_notes);
}
