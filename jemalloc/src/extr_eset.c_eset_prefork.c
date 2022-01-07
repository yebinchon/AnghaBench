
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int mtx; } ;
typedef TYPE_1__ eset_t ;


 int malloc_mutex_prefork (int *,int *) ;

void
eset_prefork(tsdn_t *tsdn, eset_t *eset) {
 malloc_mutex_prefork(tsdn, &eset->mtx);
}
