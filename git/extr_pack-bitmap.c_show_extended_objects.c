
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct object {int type; int oid; } ;
struct eindex {size_t count; int * hashes; struct object** objects; } ;
struct bitmap_index {TYPE_1__* pack; struct eindex ext_index; struct bitmap* result; } ;
struct bitmap {int dummy; } ;
typedef int (* show_reachable_fn ) (int *,int ,int ,int ,int *,int ) ;
struct TYPE_2__ {scalar_t__ num_objects; } ;


 int bitmap_get (struct bitmap*,scalar_t__) ;

__attribute__((used)) static void show_extended_objects(struct bitmap_index *bitmap_git,
      show_reachable_fn show_reach)
{
 struct bitmap *objects = bitmap_git->result;
 struct eindex *eindex = &bitmap_git->ext_index;
 uint32_t i;

 for (i = 0; i < eindex->count; ++i) {
  struct object *obj;

  if (!bitmap_get(objects, bitmap_git->pack->num_objects + i))
   continue;

  obj = eindex->objects[i];
  show_reach(&obj->oid, obj->type, 0, eindex->hashes[i], ((void*)0), 0);
 }
}
