
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;


 scalar_t__ extent_head_no_merge (int *,int *) ;
 int extent_merge_default_impl (void*,void*) ;
 int * iealloc (int *,void*) ;
 int maps_coalesce ;
 int * tsdn_fetch () ;

__attribute__((used)) static bool
extent_merge_default(extent_hooks_t *extent_hooks, void *addr_a, size_t size_a,
    void *addr_b, size_t size_b, bool committed, unsigned arena_ind) {
 if (!maps_coalesce) {
  tsdn_t *tsdn = tsdn_fetch();
  extent_t *a = iealloc(tsdn, addr_a);
  extent_t *b = iealloc(tsdn, addr_b);
  if (extent_head_no_merge(a, b)) {
   return 1;
  }
 }
 return extent_merge_default_impl(addr_a, addr_b);
}
