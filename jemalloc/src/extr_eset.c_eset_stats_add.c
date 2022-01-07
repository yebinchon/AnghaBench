
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t pszind_t ;
struct TYPE_3__ {int * nbytes; int * nextents; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_load_zu (int *,int ) ;
 int atomic_store_zu (int *,size_t,int ) ;

__attribute__((used)) static void
eset_stats_add(eset_t *eset, pszind_t pind, size_t sz) {
 size_t cur = atomic_load_zu(&eset->nextents[pind], ATOMIC_RELAXED);
 atomic_store_zu(&eset->nextents[pind], cur + 1, ATOMIC_RELAXED);
 cur = atomic_load_zu(&eset->nbytes[pind], ATOMIC_RELAXED);
 atomic_store_zu(&eset->nbytes[pind], cur + sz, ATOMIC_RELAXED);
}
