
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int origin_len; int origin; } ;
typedef TYPE_1__ zone_t ;


 int cmp_str (int ,int ,int ,int ) ;

__attribute__((used)) static int cmp_ptr_zone (const void *x, const void *y) {
  zone_t *a = *((zone_t **) x);
  zone_t *b = *((zone_t **) y);
  return cmp_str (a->origin, a->origin_len, b->origin, b->origin_len);
}
