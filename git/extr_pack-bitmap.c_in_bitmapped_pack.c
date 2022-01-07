
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_list {struct object_list* next; struct object* item; } ;
struct TYPE_2__ {int hash; } ;
struct object {TYPE_1__ oid; } ;
struct bitmap_index {int pack; } ;


 scalar_t__ find_pack_entry_one (int ,int ) ;

__attribute__((used)) static int in_bitmapped_pack(struct bitmap_index *bitmap_git,
        struct object_list *roots)
{
 while (roots) {
  struct object *object = roots->item;
  roots = roots->next;

  if (find_pack_entry_one(object->oid.hash, bitmap_git->pack) > 0)
   return 1;
 }

 return 0;
}
