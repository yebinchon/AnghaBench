
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tag {int dummy; } ;
struct TYPE_4__ {unsigned int nr; TYPE_1__* objects; } ;
struct rev_info {int ignore_missing_links; TYPE_2__ pending; int repo; } ;
struct object_list {int dummy; } ;
struct object {scalar_t__ type; int flags; int oid; } ;
struct bitmap_index {struct bitmap* haves; struct bitmap* result; } ;
struct bitmap {int dummy; } ;
struct TYPE_3__ {struct object* item; } ;


 int BUG (char*) ;
 scalar_t__ OBJ_NONE ;
 scalar_t__ OBJ_TAG ;
 int UNINTERESTING ;
 int bitmap_and_not (struct bitmap*,struct bitmap*) ;
 struct bitmap* find_objects (struct bitmap_index*,struct rev_info*,struct object_list*,struct bitmap*) ;
 int free_bitmap_index (struct bitmap_index*) ;
 int * get_tagged_oid (struct tag*) ;
 int in_bitmapped_pack (struct bitmap_index*,struct object_list*) ;
 scalar_t__ load_pack_bitmap (struct bitmap_index*) ;
 int object_array_clear (TYPE_2__*) ;
 int object_list_insert (struct object*,struct object_list**) ;
 scalar_t__ open_pack_bitmap (int ,struct bitmap_index*) ;
 struct object* parse_object_or_die (int *,int *) ;
 int reset_revision_walk () ;
 struct bitmap_index* xcalloc (int,int) ;

struct bitmap_index *prepare_bitmap_walk(struct rev_info *revs)
{
 unsigned int i;

 struct object_list *wants = ((void*)0);
 struct object_list *haves = ((void*)0);

 struct bitmap *wants_bitmap = ((void*)0);
 struct bitmap *haves_bitmap = ((void*)0);

 struct bitmap_index *bitmap_git = xcalloc(1, sizeof(*bitmap_git));


 if (open_pack_bitmap(revs->repo, bitmap_git) < 0)
  goto cleanup;

 for (i = 0; i < revs->pending.nr; ++i) {
  struct object *object = revs->pending.objects[i].item;

  if (object->type == OBJ_NONE)
   parse_object_or_die(&object->oid, ((void*)0));

  while (object->type == OBJ_TAG) {
   struct tag *tag = (struct tag *) object;

   if (object->flags & UNINTERESTING)
    object_list_insert(object, &haves);
   else
    object_list_insert(object, &wants);

   object = parse_object_or_die(get_tagged_oid(tag), ((void*)0));
  }

  if (object->flags & UNINTERESTING)
   object_list_insert(object, &haves);
  else
   object_list_insert(object, &wants);
 }






 if (haves && !in_bitmapped_pack(bitmap_git, haves))
  goto cleanup;


 if (!wants)
  goto cleanup;






 if (load_pack_bitmap(bitmap_git) < 0)
  goto cleanup;

 object_array_clear(&revs->pending);

 if (haves) {
  revs->ignore_missing_links = 1;
  haves_bitmap = find_objects(bitmap_git, revs, haves, ((void*)0));
  reset_revision_walk();
  revs->ignore_missing_links = 0;

  if (haves_bitmap == ((void*)0))
   BUG("failed to perform bitmap walk");
 }

 wants_bitmap = find_objects(bitmap_git, revs, wants, haves_bitmap);

 if (!wants_bitmap)
  BUG("failed to perform bitmap walk");

 if (haves_bitmap)
  bitmap_and_not(wants_bitmap, haves_bitmap);

 bitmap_git->result = wants_bitmap;
 bitmap_git->haves = haves_bitmap;

 return bitmap_git;

cleanup:
 free_bitmap_index(bitmap_git);
 return ((void*)0);
}
