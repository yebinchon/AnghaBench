
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ owner; scalar_t__ place; } ;
typedef TYPE_1__ recommend_place_t ;



__attribute__((used)) static int cmp_recommend_item (const void *a, const void *b) {
  const recommend_place_t *aa = *(const recommend_place_t **) a;
  const recommend_place_t *bb = *(const recommend_place_t **) b;
  if (aa->type < bb->type) {
    return -1;
  }
  if (aa->type > bb->type) {
    return 1;
  }
  if (aa->owner < bb->owner) {
    return -1;
  }
  if (aa->owner > bb->owner) {
    return 1;
  }
  if (aa->place < bb->place) {
    return -1;
  }
  if (aa->place > bb->place) {
    return 1;
  }
  return 0;
}
