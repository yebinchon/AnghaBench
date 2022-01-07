
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int eset_dirty; int decay_dirty; } ;
typedef TYPE_1__ arena_t ;


 int arena_decay_impl (int *,TYPE_1__*,int *,int *,int,int) ;

__attribute__((used)) static bool
arena_decay_dirty(tsdn_t *tsdn, arena_t *arena, bool is_background_thread,
    bool all) {
 return arena_decay_impl(tsdn, arena, &arena->decay_dirty,
     &arena->eset_dirty, is_background_thread, all);
}
