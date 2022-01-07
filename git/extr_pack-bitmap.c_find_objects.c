
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stored_bitmap {int dummy; } ;
struct rev_info {struct include_data* include_check_data; int include_check; } ;
struct object_list {struct object_list* next; struct object* item; } ;
struct object {scalar_t__ type; int flags; int oid; } ;
struct include_data {struct bitmap* seen; struct bitmap* base; struct bitmap_index* bitmap_git; } ;
struct ewah_bitmap {int dummy; } ;
struct bitmap_show_data {struct bitmap* base; struct bitmap_index* bitmap_git; } ;
struct bitmap_index {int bitmaps; } ;
struct bitmap {int dummy; } ;
typedef scalar_t__ khiter_t ;


 scalar_t__ OBJ_COMMIT ;
 int SEEN ;
 int UNINTERESTING ;
 int add_pending_object (struct rev_info*,struct object*,char*) ;
 int bitmap_get (struct bitmap*,int) ;
 struct bitmap* bitmap_new () ;
 int bitmap_or_ewah (struct bitmap*,struct ewah_bitmap*) ;
 int bitmap_position (struct bitmap_index*,int *) ;
 int die (char*) ;
 struct bitmap* ewah_to_bitmap (struct ewah_bitmap*) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,int ) ;
 struct stored_bitmap* kh_value (int ,scalar_t__) ;
 struct ewah_bitmap* lookup_stored_bitmap (struct stored_bitmap*) ;
 int object_list_insert (struct object*,struct object_list**) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int should_include ;
 int show_commit ;
 int show_object ;
 int traverse_commit_list (struct rev_info*,int ,int ,struct bitmap_show_data*) ;

__attribute__((used)) static struct bitmap *find_objects(struct bitmap_index *bitmap_git,
       struct rev_info *revs,
       struct object_list *roots,
       struct bitmap *seen)
{
 struct bitmap *base = ((void*)0);
 int needs_walk = 0;

 struct object_list *not_mapped = ((void*)0);
 while (roots) {
  struct object *object = roots->item;
  roots = roots->next;

  if (object->type == OBJ_COMMIT) {
   khiter_t pos = kh_get_oid_map(bitmap_git->bitmaps, object->oid);

   if (pos < kh_end(bitmap_git->bitmaps)) {
    struct stored_bitmap *st = kh_value(bitmap_git->bitmaps, pos);
    struct ewah_bitmap *or_with = lookup_stored_bitmap(st);

    if (base == ((void*)0))
     base = ewah_to_bitmap(or_with);
    else
     bitmap_or_ewah(base, or_with);

    object->flags |= SEEN;
    continue;
   }
  }

  object_list_insert(object, &not_mapped);
 }





 if (not_mapped == ((void*)0))
  return base;

 roots = not_mapped;
 while (roots) {
  struct object *object = roots->item;
  int pos;

  roots = roots->next;
  pos = bitmap_position(bitmap_git, &object->oid);

  if (pos < 0 || base == ((void*)0) || !bitmap_get(base, pos)) {
   object->flags &= ~UNINTERESTING;
   add_pending_object(revs, object, "");
   needs_walk = 1;
  } else {
   object->flags |= SEEN;
  }
 }

 if (needs_walk) {
  struct include_data incdata;
  struct bitmap_show_data show_data;

  if (base == ((void*)0))
   base = bitmap_new();

  incdata.bitmap_git = bitmap_git;
  incdata.base = base;
  incdata.seen = seen;

  revs->include_check = should_include;
  revs->include_check_data = &incdata;

  if (prepare_revision_walk(revs))
   die("revision walk setup failed");

  show_data.bitmap_git = bitmap_git;
  show_data.base = base;

  traverse_commit_list(revs, show_commit, show_object,
         &show_data);
 }

 return base;
}
