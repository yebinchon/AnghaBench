
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash; } ;
typedef TYPE_1__ brain_server_hash_long_t ;


 int brain_server_sort_hash (int ,int ) ;

int brain_server_sort_hash_long (const void *v1, const void *v2)
{
  const brain_server_hash_long_t *d1 = (const brain_server_hash_long_t *) v1;
  const brain_server_hash_long_t *d2 = (const brain_server_hash_long_t *) v2;

  return brain_server_sort_hash (d1->hash, d2->hash);
}
