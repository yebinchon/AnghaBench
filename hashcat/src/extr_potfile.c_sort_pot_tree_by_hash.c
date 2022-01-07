
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * hashconfig; TYPE_1__* nodes; } ;
typedef TYPE_2__ pot_tree_entry_t ;
typedef int hashconfig_t ;
typedef int hash_t ;
struct TYPE_3__ {scalar_t__ hash_buf; } ;


 int sort_by_hash (int const*,int const*,int *) ;

int sort_pot_tree_by_hash (const void *v1, const void *v2)
{
  const pot_tree_entry_t *t1 = (const pot_tree_entry_t *) v1;
  const pot_tree_entry_t *t2 = (const pot_tree_entry_t *) v2;

  const hash_t *h1 = (const hash_t *) t1->nodes->hash_buf;
  const hash_t *h2 = (const hash_t *) t2->nodes->hash_buf;

  hashconfig_t *hc = t1->hashconfig;

  return sort_by_hash (h1, h2, hc);
}
