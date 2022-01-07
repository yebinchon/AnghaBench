
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int eset_retained; int eset_muzzy; int eset_dirty; } ;
typedef TYPE_1__ arena_t ;


 int eset_prefork (int *,int *) ;

void
arena_prefork3(tsdn_t *tsdn, arena_t *arena) {
 eset_prefork(tsdn, &arena->eset_dirty);
 eset_prefork(tsdn, &arena->eset_muzzy);
 eset_prefork(tsdn, &arena->eset_retained);
}
