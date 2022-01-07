
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
typedef int extent_hooks_t ;
struct TYPE_5__ {unsigned int arena_ind; } ;
typedef TYPE_1__ ctl_arena_t ;
struct TYPE_6__ {unsigned int narenas; int destroyed; } ;


 int UINT_MAX ;
 int * arena_init (int ,unsigned int,int *) ;
 int * arenas_i_impl (int *,unsigned int,int,int) ;
 TYPE_4__* ctl_arenas ;
 int destroyed_link ;
 TYPE_1__* ql_last (int *,int ) ;
 int ql_remove (int *,TYPE_1__*,int ) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static unsigned
ctl_arena_init(tsd_t *tsd, extent_hooks_t *extent_hooks) {
 unsigned arena_ind;
 ctl_arena_t *ctl_arena;

 if ((ctl_arena = ql_last(&ctl_arenas->destroyed, destroyed_link)) !=
     ((void*)0)) {
  ql_remove(&ctl_arenas->destroyed, ctl_arena, destroyed_link);
  arena_ind = ctl_arena->arena_ind;
 } else {
  arena_ind = ctl_arenas->narenas;
 }


 if (arenas_i_impl(tsd, arena_ind, 0, 1) == ((void*)0)) {
  return UINT_MAX;
 }


 if (arena_init(tsd_tsdn(tsd), arena_ind, extent_hooks) == ((void*)0)) {
  return UINT_MAX;
 }

 if (arena_ind == ctl_arenas->narenas) {
  ctl_arenas->narenas++;
 }

 return arena_ind;
}
