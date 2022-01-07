
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int decay_muzzy; } ;
typedef TYPE_1__ arena_t ;


 int arena_decay_ms_get (int *) ;

ssize_t
arena_muzzy_decay_ms_get(arena_t *arena) {
 return arena_decay_ms_get(&arena->decay_muzzy);
}
