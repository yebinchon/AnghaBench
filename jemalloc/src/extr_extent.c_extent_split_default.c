
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_hooks_t ;


 int maps_coalesce ;
 int opt_retain ;

__attribute__((used)) static bool
extent_split_default(extent_hooks_t *extent_hooks, void *addr, size_t size,
    size_t size_a, size_t size_b, bool committed, unsigned arena_ind) {
 if (!maps_coalesce) {





  return !opt_retain;
 }

 return 0;
}
