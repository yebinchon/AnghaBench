
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extent_t ;
struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ eset_t ;
typedef int arena_t ;


 scalar_t__ arena_ind_get (int *) ;
 int assert (int) ;
 scalar_t__ extent_arena_ind_get (int const*) ;
 scalar_t__ extent_committed_get (int const*) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int const*) ;

__attribute__((used)) static bool
extent_can_coalesce(arena_t *arena, eset_t *eset, const extent_t *inner,
    const extent_t *outer) {
 assert(extent_arena_ind_get(inner) == arena_ind_get(arena));
 if (extent_arena_ind_get(outer) != arena_ind_get(arena)) {
  return 0;
 }

 assert(extent_state_get(inner) == extent_state_active);
 if (extent_state_get(outer) != eset->state) {
  return 0;
 }

 if (extent_committed_get(inner) != extent_committed_get(outer)) {
  return 0;
 }

 return 1;
}
