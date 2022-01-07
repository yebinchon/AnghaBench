
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_t ;


 scalar_t__ arena_muzzy_decay_ms_get (int *) ;
 scalar_t__ pages_can_purge_lazy ;

__attribute__((used)) static bool
arena_may_have_muzzy(arena_t *arena) {
 return (pages_can_purge_lazy && (arena_muzzy_decay_ms_get(arena) != 0));
}
