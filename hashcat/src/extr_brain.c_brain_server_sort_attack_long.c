
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
typedef TYPE_1__ brain_server_attack_long_t ;



int brain_server_sort_attack_long (const void *v1, const void *v2)
{
  const brain_server_attack_long_t *d1 = (const brain_server_attack_long_t *) v1;
  const brain_server_attack_long_t *d2 = (const brain_server_attack_long_t *) v2;

  if (d1->offset > d2->offset) return 1;
  if (d1->offset < d2->offset) return -1;

  return 0;
}
