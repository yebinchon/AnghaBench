
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * nthreads; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int atomic_fetch_add_u (int *,int,int ) ;

void
arena_nthreads_inc(arena_t *arena, bool internal) {
 atomic_fetch_add_u(&arena->nthreads[internal], 1, ATOMIC_RELAXED);
}
