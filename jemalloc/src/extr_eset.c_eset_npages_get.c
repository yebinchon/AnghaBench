
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int npages; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_load_zu (int *,int ) ;

size_t
eset_npages_get(eset_t *eset) {
 return atomic_load_zu(&eset->npages, ATOMIC_RELAXED);
}
