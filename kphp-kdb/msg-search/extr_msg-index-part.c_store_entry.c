
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; } ;
typedef TYPE_1__ entry_t ;


 int TEXT_SIZE ;
 int assert (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* mymalloc (int) ;

entry_t *store_entry (entry_t *E) {
  int r = sizeof(entry_t) - TEXT_SIZE + E->len + 1;
  entry_t *R = mymalloc (r);
  assert (R);
  memcpy (R, E, r);
  return R;
}
