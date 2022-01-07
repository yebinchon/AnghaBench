
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int ATOMIC_RELAXED ;
 size_t LG_PAGE ;
 int WITNESS_RANK_CORE ;
 int atomic_compare_exchange_weak_zu (int *,size_t*,size_t,int ,int ) ;
 size_t atomic_fetch_add_zu (int *,size_t,int ) ;
 size_t atomic_load_zu (int *,int ) ;
 int cassert (int ) ;
 int config_prof ;
 int curpages ;
 size_t extent_size_get (int const*) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int const*) ;
 int highpages ;
 scalar_t__ opt_prof ;
 int prof_gdump (int *) ;
 scalar_t__ prof_gdump_get_unlocked () ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

__attribute__((used)) static void
extent_gdump_add(tsdn_t *tsdn, const extent_t *extent) {
 cassert(config_prof);

 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 if (opt_prof && extent_state_get(extent) == extent_state_active) {
  size_t nadd = extent_size_get(extent) >> LG_PAGE;
  size_t cur = atomic_fetch_add_zu(&curpages, nadd,
      ATOMIC_RELAXED) + nadd;
  size_t high = atomic_load_zu(&highpages, ATOMIC_RELAXED);
  while (cur > high && !atomic_compare_exchange_weak_zu(
      &highpages, &high, cur, ATOMIC_RELAXED, ATOMIC_RELAXED)) {





  }
  if (cur > high && prof_gdump_get_unlocked()) {
   prof_gdump(tsdn);
  }
 }
}
