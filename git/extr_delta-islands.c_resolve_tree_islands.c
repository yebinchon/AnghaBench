
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_islands_todo {struct object_entry* entry; int depth; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct repository {int dummy; } ;
struct progress {int dummy; } ;
struct packing_data {int nr_objects; struct object_entry* objects; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct object {int dummy; } ;
struct name_entry {int oid; int mode; } ;
struct island_bitmap {int dummy; } ;
typedef scalar_t__ khiter_t ;


 int ALLOC_ARRAY (struct tree_islands_todo*,int) ;
 scalar_t__ OBJ_TREE ;
 int QSORT (struct tree_islands_todo*,int,int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int _ (char*) ;
 int die (int ,int ) ;
 int display_progress (struct progress*,int) ;
 int free (struct tree_islands_todo*) ;
 int free_tree_buffer (struct tree*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int island_marks ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,int ) ;
 struct island_bitmap* kh_value (int ,scalar_t__) ;
 struct object* lookup_object (struct repository*,int *) ;
 struct tree* lookup_tree (struct repository*,int *) ;
 int oe_tree_depth (struct packing_data*,struct object_entry*) ;
 scalar_t__ oe_type (struct object_entry*) ;
 int oid_to_hex (int *) ;
 scalar_t__ parse_tree (struct tree*) ;
 int set_island_marks (struct object*,struct island_bitmap*) ;
 struct progress* start_progress (int ,int) ;
 int stop_progress (struct progress**) ;
 int tree_depth_compare ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

void resolve_tree_islands(struct repository *r,
     int progress,
     struct packing_data *to_pack)
{
 struct progress *progress_state = ((void*)0);
 struct tree_islands_todo *todo;
 int nr = 0;
 int i;

 if (!island_marks)
  return;
 ALLOC_ARRAY(todo, to_pack->nr_objects);
 for (i = 0; i < to_pack->nr_objects; i++) {
  if (oe_type(&to_pack->objects[i]) == OBJ_TREE) {
   todo[nr].entry = &to_pack->objects[i];
   todo[nr].depth = oe_tree_depth(to_pack, &to_pack->objects[i]);
   nr++;
  }
 }
 QSORT(todo, nr, tree_depth_compare);

 if (progress)
  progress_state = start_progress(_("Propagating island marks"), nr);

 for (i = 0; i < nr; i++) {
  struct object_entry *ent = todo[i].entry;
  struct island_bitmap *root_marks;
  struct tree *tree;
  struct tree_desc desc;
  struct name_entry entry;
  khiter_t pos;

  pos = kh_get_oid_map(island_marks, ent->idx.oid);
  if (pos >= kh_end(island_marks))
   continue;

  root_marks = kh_value(island_marks, pos);

  tree = lookup_tree(r, &ent->idx.oid);
  if (!tree || parse_tree(tree) < 0)
   die(_("bad tree object %s"), oid_to_hex(&ent->idx.oid));

  init_tree_desc(&desc, tree->buffer, tree->size);
  while (tree_entry(&desc, &entry)) {
   struct object *obj;

   if (S_ISGITLINK(entry.mode))
    continue;

   obj = lookup_object(r, &entry.oid);
   if (!obj)
    continue;

   set_island_marks(obj, root_marks);
  }

  free_tree_buffer(tree);

  display_progress(progress_state, i+1);
 }

 stop_progress(&progress_state);
 free(todo);
}
