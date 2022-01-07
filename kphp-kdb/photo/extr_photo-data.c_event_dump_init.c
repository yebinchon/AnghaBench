
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_id; int size; scalar_t__ tn; } ;
typedef TYPE_1__ event_dump ;
struct TYPE_5__ {int shifts_len; } ;


 TYPE_2__* types ;

void event_dump_init (event_dump *d, int type_id) {
  d->tn = 0;
  d->type_id = type_id;
  d->size = types[type_id].shifts_len;
}
