
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int ATOMIC_RELAXED ;
 size_t LG_PAGE ;
 int assert (int) ;
 int atomic_fetch_sub_zu (int *,size_t,int ) ;
 size_t atomic_load_zu (int *,int ) ;
 int cassert (int ) ;
 int config_prof ;
 int curpages ;
 size_t extent_size_get (int const*) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int const*) ;
 scalar_t__ opt_prof ;

__attribute__((used)) static void
extent_gdump_sub(tsdn_t *tsdn, const extent_t *extent) {
 cassert(config_prof);

 if (opt_prof && extent_state_get(extent) == extent_state_active) {
  size_t nsub = extent_size_get(extent) >> LG_PAGE;
  assert(atomic_load_zu(&curpages, ATOMIC_RELAXED) >= nsub);
  atomic_fetch_sub_zu(&curpages, nsub, ATOMIC_RELAXED);
 }
}
