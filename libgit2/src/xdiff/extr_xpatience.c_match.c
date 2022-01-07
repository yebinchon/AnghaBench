
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int size; int ptr; } ;
typedef TYPE_5__ xrecord_t ;
struct hashmap {TYPE_1__* xpp; TYPE_4__* env; } ;
struct TYPE_8__ {TYPE_5__** recs; } ;
struct TYPE_7__ {TYPE_5__** recs; } ;
struct TYPE_9__ {TYPE_3__ xdf2; TYPE_2__ xdf1; } ;
struct TYPE_6__ {int flags; } ;


 int xdl_recmatch (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int match(struct hashmap *map, int line1, int line2)
{
 xrecord_t *record1 = map->env->xdf1.recs[line1 - 1];
 xrecord_t *record2 = map->env->xdf2.recs[line2 - 1];
 return xdl_recmatch(record1->ptr, record1->size,
  record2->ptr, record2->size, map->xpp->flags);
}
