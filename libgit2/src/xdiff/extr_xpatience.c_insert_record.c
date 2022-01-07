
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int ha; int ptr; int size; } ;
typedef TYPE_6__ xrecord_t ;
typedef int xpparam_t ;
struct hashmap {int alloc; int has_matches; int nr; TYPE_5__* entries; TYPE_5__* last; TYPE_5__* first; TYPE_4__* env; TYPE_2__* xpp; } ;
struct TYPE_11__ {int line1; int hash; int line2; struct TYPE_11__* previous; struct TYPE_11__* next; int anchor; } ;
struct TYPE_9__ {TYPE_6__** recs; } ;
struct TYPE_7__ {TYPE_6__** recs; } ;
struct TYPE_10__ {TYPE_3__ xdf1; TYPE_1__ xdf2; } ;
struct TYPE_8__ {int flags; } ;


 int NON_UNIQUE ;
 int is_anchor (int const*,int ) ;
 int xdl_recmatch (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void insert_record(xpparam_t const *xpp, int line, struct hashmap *map,
     int pass)
{
 xrecord_t **records = pass == 1 ?
  map->env->xdf1.recs : map->env->xdf2.recs;
 xrecord_t *record = records[line - 1], *other;
 int index = (int)((record->ha << 1) % map->alloc);

 while (map->entries[index].line1) {
  other = map->env->xdf1.recs[map->entries[index].line1 - 1];
  if (map->entries[index].hash != record->ha ||
    !xdl_recmatch(record->ptr, record->size,
     other->ptr, other->size,
     map->xpp->flags)) {
   if (++index >= map->alloc)
    index = 0;
   continue;
  }
  if (pass == 2)
   map->has_matches = 1;
  if (pass == 1 || map->entries[index].line2)
   map->entries[index].line2 = NON_UNIQUE;
  else
   map->entries[index].line2 = line;
  return;
 }
 if (pass == 2)
  return;
 map->entries[index].line1 = line;
 map->entries[index].hash = record->ha;
 map->entries[index].anchor = is_anchor(xpp, map->env->xdf1.recs[line - 1]->ptr);
 if (!map->first)
  map->first = map->entries + index;
 if (map->last) {
  map->last->next = map->entries + index;
  map->entries[index].previous = map->last;
 }
 map->last = map->entries + index;
 map->nr++;
}
