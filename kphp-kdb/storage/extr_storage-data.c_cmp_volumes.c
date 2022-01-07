
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ volume_id; } ;
typedef TYPE_1__ volume_t ;



__attribute__((used)) static int cmp_volumes (const void *x, const void *y) {
  const volume_t *a = *(const volume_t **) x;
  const volume_t *b = *(const volume_t **) y;
  if (a->volume_id < b->volume_id) {
    return -1;
  }
  if (a->volume_id > b->volume_id) {
    return 1;
  }
  return 0;
}
