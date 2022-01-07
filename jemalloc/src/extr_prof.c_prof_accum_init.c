
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_2__ {scalar_t__ accumbytes; int mtx; } ;


 int ATOMIC_RELAXED ;
 int WITNESS_RANK_PROF_ACCUM ;
 int atomic_store_u64 (scalar_t__*,int ,int ) ;
 int cassert (int ) ;
 int config_prof ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 TYPE_1__ prof_idump_accumulated ;

bool
prof_accum_init(tsdn_t *tsdn) {
 cassert(config_prof);


 if (malloc_mutex_init(&prof_idump_accumulated.mtx, "prof_accum",
     WITNESS_RANK_PROF_ACCUM, malloc_mutex_rank_exclusive)) {
  return 1;
 }
 prof_idump_accumulated.accumbytes = 0;




 return 0;
}
