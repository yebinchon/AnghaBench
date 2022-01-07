
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct checkout {int clone; } ;
struct TYPE_2__ {int ce_flags; } ;


 int CE_MATCHED ;

__attribute__((used)) static void setup_collided_checkout_detection(struct checkout *state,
           struct index_state *index)
{
 int i;

 state->clone = 1;
 for (i = 0; i < index->cache_nr; i++)
  index->cache[i]->ce_flags &= ~CE_MATCHED;
}
