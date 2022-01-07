
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int index; } ;



__attribute__((used)) static void mark_base_index_entries(struct index_state *base)
{
 int i;







 for (i = 0; i < base->cache_nr; i++)
  base->cache[i]->index = i + 1;
}
