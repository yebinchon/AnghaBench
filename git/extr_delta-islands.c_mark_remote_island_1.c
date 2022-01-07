
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct tag {struct object* tagged; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {size_t nr; int * oid; } ;
struct remote_island {TYPE_1__ oids; } ;
struct object {scalar_t__ type; int oid; int flags; } ;
struct island_bitmap {int dummy; } ;


 int NEEDS_BITMAP ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 struct island_bitmap* create_or_get_island_marks (struct object*) ;
 int island_bitmap_set (struct island_bitmap*,int ) ;
 int island_counter ;
 int island_counter_core ;
 struct object* parse_object (struct repository*,int *) ;

__attribute__((used)) static void mark_remote_island_1(struct repository *r,
     struct remote_island *rl,
     int is_core_island)
{
 uint32_t i;

 for (i = 0; i < rl->oids.nr; ++i) {
  struct island_bitmap *marks;
  struct object *obj = parse_object(r, &rl->oids.oid[i]);

  if (!obj)
   continue;

  marks = create_or_get_island_marks(obj);
  island_bitmap_set(marks, island_counter);

  if (is_core_island && obj->type == OBJ_COMMIT)
   obj->flags |= NEEDS_BITMAP;


  while (obj && obj->type == OBJ_TAG) {
   obj = ((struct tag *)obj)->tagged;
   if (obj) {
    parse_object(r, &obj->oid);
    marks = create_or_get_island_marks(obj);
    island_bitmap_set(marks, island_counter);
   }
  }
 }

 if (is_core_island)
  island_counter_core = island_counter;

 island_counter++;
}
