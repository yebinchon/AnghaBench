
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; int order; } ;
typedef TYPE_1__ pair_t ;



int pcmp (const void *a, const void *b) {
  const pair_t *aa = a, *bb = b;
  if (aa->hash < bb->hash) return -1;
  if (aa->hash > bb->hash) return 1;
  return aa->order - bb->order;
}
