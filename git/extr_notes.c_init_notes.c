
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct notes_tree {int initialized; struct int_node* root; scalar_t__ dirty; scalar_t__ combine_notes; int * ref; int * update_ref; int * prev_non_note; int * first_non_note; } ;
struct leaf_node {int val_oid; int key_oid; } ;
struct int_node {int dummy; } ;
typedef scalar_t__ combine_notes_fn ;


 int NOTES_INIT_EMPTY ;
 int NOTES_INIT_WRITABLE ;
 int assert (int) ;
 scalar_t__ combine_notes_concatenate ;
 char* default_notes_ref () ;
 struct notes_tree default_notes_tree ;
 int die (char*,char const*,...) ;
 scalar_t__ get_oid_treeish (char const*,struct object_id*) ;
 scalar_t__ get_tree_entry (int ,struct object_id*,char*,struct object_id*,unsigned short*) ;
 int load_subtree (struct notes_tree*,struct leaf_node*,struct int_node*,int ) ;
 int oid_to_hex (struct object_id*) ;
 int oidclr (int *) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ read_ref (char const*,struct object_id*) ;
 int the_repository ;
 scalar_t__ xcalloc (int,int) ;
 int * xstrdup_or_null (char const*) ;

void init_notes(struct notes_tree *t, const char *notes_ref,
  combine_notes_fn combine_notes, int flags)
{
 struct object_id oid, object_oid;
 unsigned short mode;
 struct leaf_node root_tree;

 if (!t)
  t = &default_notes_tree;
 assert(!t->initialized);

 if (!notes_ref)
  notes_ref = default_notes_ref();

 if (!combine_notes)
  combine_notes = combine_notes_concatenate;

 t->root = (struct int_node *) xcalloc(1, sizeof(struct int_node));
 t->first_non_note = ((void*)0);
 t->prev_non_note = ((void*)0);
 t->ref = xstrdup_or_null(notes_ref);
 t->update_ref = (flags & NOTES_INIT_WRITABLE) ? t->ref : ((void*)0);
 t->combine_notes = combine_notes;
 t->initialized = 1;
 t->dirty = 0;

 if (flags & NOTES_INIT_EMPTY || !notes_ref ||
     get_oid_treeish(notes_ref, &object_oid))
  return;
 if (flags & NOTES_INIT_WRITABLE && read_ref(notes_ref, &object_oid))
  die("Cannot use notes ref %s", notes_ref);
 if (get_tree_entry(the_repository, &object_oid, "", &oid, &mode))
  die("Failed to read notes tree referenced by %s (%s)",
      notes_ref, oid_to_hex(&object_oid));

 oidclr(&root_tree.key_oid);
 oidcpy(&root_tree.val_oid, &oid);
 load_subtree(t, &root_tree, t->root, 0);
}
