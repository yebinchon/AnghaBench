
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_ijkio_on_app_event ) (TYPE_1__*,int ,void*,int) ;} ;
typedef TYPE_1__ IjkIOApplicationContext ;
typedef int IjkIOAppCacheStatistic ;


 int IJKIOAPP_EVENT_CACHE_STATISTIC ;
 int stub1 (TYPE_1__*,int ,void*,int) ;

void ijkio_application_on_cache_statistic(IjkIOApplicationContext *h, IjkIOAppCacheStatistic *statistic) {
    if (h && h->func_ijkio_on_app_event)
        h->func_ijkio_on_app_event(h, IJKIOAPP_EVENT_CACHE_STATISTIC, (void *)statistic, sizeof(IjkIOAppCacheStatistic));
}
