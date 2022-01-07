
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree_entry {TYPE_2__* versions; struct tree_content* tree; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; int delta_depth; } ;
struct TYPE_3__ {int offset; } ;
struct object_entry {scalar_t__ pack_id; TYPE_1__ idx; } ;
struct last_object {int member_3; int depth; int offset; int data; int member_2; int member_1; int member_0; } ;
struct TYPE_4__ {int mode; int oid; } ;


 int NO_DELTA ;
 int OBJ_TREE ;
 int STRBUF_INIT ;
 scalar_t__ S_ISDIR (int) ;
 struct object_entry* find_object (int *) ;
 int is_null_oid (int *) ;
 int load_tree (struct tree_entry*) ;
 int mktree (struct tree_content*,int,int *) ;
 int new_tree ;
 int oidcpy (int *,int *) ;
 int old_tree ;
 scalar_t__ pack_id ;
 int release_tree_entry (struct tree_entry*) ;
 int store_object (int ,int *,struct last_object*,int *,int ) ;

__attribute__((used)) static void store_tree(struct tree_entry *root)
{
 struct tree_content *t;
 unsigned int i, j, del;
 struct last_object lo = { STRBUF_INIT, 0, 0, 1 };
 struct object_entry *le = ((void*)0);

 if (!is_null_oid(&root->versions[1].oid))
  return;

 if (!root->tree)
  load_tree(root);
 t = root->tree;

 for (i = 0; i < t->entry_count; i++) {
  if (t->entries[i]->tree)
   store_tree(t->entries[i]);
 }

 if (!(root->versions[0].mode & NO_DELTA))
  le = find_object(&root->versions[0].oid);
 if (S_ISDIR(root->versions[0].mode) && le && le->pack_id == pack_id) {
  mktree(t, 0, &old_tree);
  lo.data = old_tree;
  lo.offset = le->idx.offset;
  lo.depth = t->delta_depth;
 }

 mktree(t, 1, &new_tree);
 store_object(OBJ_TREE, &new_tree, &lo, &root->versions[1].oid, 0);

 t->delta_depth = lo.depth;
 for (i = 0, j = 0, del = 0; i < t->entry_count; i++) {
  struct tree_entry *e = t->entries[i];
  if (e->versions[1].mode) {
   e->versions[0].mode = e->versions[1].mode;
   oidcpy(&e->versions[0].oid, &e->versions[1].oid);
   t->entries[j++] = e;
  } else {
   release_tree_entry(e);
   del++;
  }
 }
 t->entry_count -= del;
}
