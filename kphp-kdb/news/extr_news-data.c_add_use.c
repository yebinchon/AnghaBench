
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next; int prev; } ;


 TYPE_1__* large_metafiles ;
 size_t large_users_number ;

void add_use (int pos) {
  large_metafiles[pos].next = large_users_number;
  large_metafiles[pos].prev = large_metafiles[large_users_number].prev;
  large_metafiles[large_metafiles[pos].next].prev = pos;
  large_metafiles[large_metafiles[pos].prev].next = pos;
}
