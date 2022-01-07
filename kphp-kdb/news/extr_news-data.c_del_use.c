
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next; size_t prev; } ;


 TYPE_1__* large_metafiles ;

void del_use (int pos) {
  large_metafiles[large_metafiles[pos].next].prev = large_metafiles[pos].prev;
  large_metafiles[large_metafiles[pos].prev].next = large_metafiles[pos].next;
  large_metafiles[pos].next = -1;
  large_metafiles[pos].prev = -1;
}
