
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ zone_t ;



__attribute__((used)) static int zones_count (zone_t *z) {
  int r = 0;
  while (z != ((void*)0)) {
    r++;
    z = z->next;
  }
  return r;
}
