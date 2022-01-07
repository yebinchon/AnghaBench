
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_5__ {int eset_muzzy; int decay_muzzy; } ;
typedef TYPE_1__ arena_t ;


 int arena_decay_impl (int *,TYPE_1__*,int *,int *,int,int) ;
 scalar_t__ arena_muzzy_decay_ms_get (TYPE_1__*) ;
 scalar_t__ eset_npages_get (int *) ;

__attribute__((used)) static bool
arena_decay_muzzy(tsdn_t *tsdn, arena_t *arena, bool is_background_thread,
    bool all) {
 if (eset_npages_get(&arena->eset_muzzy) == 0 &&
     arena_muzzy_decay_ms_get(arena) <= 0) {
  return 0;
 }
 return arena_decay_impl(tsdn, arena, &arena->decay_muzzy,
     &arena->eset_muzzy, is_background_thread, all);
}
