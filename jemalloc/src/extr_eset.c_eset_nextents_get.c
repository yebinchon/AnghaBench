
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t pszind_t ;
struct TYPE_3__ {int * nextents; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_load_zu (int *,int ) ;

size_t
eset_nextents_get(eset_t *eset, pszind_t pind) {
 return atomic_load_zu(&eset->nextents[pind], ATOMIC_RELAXED);
}
