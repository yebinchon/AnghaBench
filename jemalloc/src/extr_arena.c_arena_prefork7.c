
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {TYPE_1__* bins; } ;
typedef TYPE_2__ arena_t ;
struct TYPE_7__ {unsigned int n_shards; } ;
struct TYPE_5__ {int * bin_shards; } ;


 unsigned int SC_NBINS ;
 TYPE_3__* bin_infos ;
 int bin_prefork (int *,int *) ;

void
arena_prefork7(tsdn_t *tsdn, arena_t *arena) {
 for (unsigned i = 0; i < SC_NBINS; i++) {
  for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
   bin_prefork(tsdn, &arena->bins[i].bin_shards[j]);
  }
 }
}
