
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notes_tree {int dirty; int root; int initialized; } ;
struct TYPE_2__ {int hash; } ;
struct leaf_node {int val_oid; TYPE_1__ key_oid; } ;


 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 int hashcpy (int ,unsigned char const*) ;
 scalar_t__ is_null_oid (int *) ;
 int note_tree_remove (struct notes_tree*,int ,int ,struct leaf_node*) ;
 int oidclr (int *) ;

int remove_note(struct notes_tree *t, const unsigned char *object_sha1)
{
 struct leaf_node l;

 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);
 hashcpy(l.key_oid.hash, object_sha1);
 oidclr(&l.val_oid);
 note_tree_remove(t, t->root, 0, &l);
 if (is_null_oid(&l.val_oid))
  return 1;
 t->dirty = 1;
 return 0;
}
