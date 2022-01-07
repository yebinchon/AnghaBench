
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ brain_session; } ;
typedef TYPE_1__ brain_server_db_hash_t ;



int brain_server_sort_db_hash (const void *v1, const void *v2)
{
  const brain_server_db_hash_t *d1 = (const brain_server_db_hash_t *) v1;
  const brain_server_db_hash_t *d2 = (const brain_server_db_hash_t *) v2;

  if (d1->brain_session > d2->brain_session) return 1;
  if (d1->brain_session < d2->brain_session) return -1;

  return 0;
}
