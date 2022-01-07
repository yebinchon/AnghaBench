
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int logical_file_size; int cache_count_bytes; int cache_file_pos; int cache_file_forwards; int cache_physical_pos; } ;
struct TYPE_9__ {TYPE_1__ stat; int ijkio_inject_opaque; } ;
struct TYPE_8__ {int logical_file_size; int cache_count_bytes; int cache_file_pos; int cache_file_forwards; int cache_physical_pos; } ;
struct TYPE_7__ {scalar_t__ opaque; } ;
typedef TYPE_2__ IjkIOApplicationContext ;
typedef TYPE_3__ IjkIOAppCacheStatistic ;
typedef TYPE_4__ FFPlayer ;


 int IJKIOAPP_EVENT_CACHE_STATISTIC ;

__attribute__((used)) static int ijkio_app_func_event(IjkIOApplicationContext *h, int message ,void *data, size_t size)
{
    if (!h || !h->opaque || !data)
        return 0;

    FFPlayer *ffp = (FFPlayer *)h->opaque;
    if (!ffp->ijkio_inject_opaque)
        return 0;

    if (message == IJKIOAPP_EVENT_CACHE_STATISTIC && sizeof(IjkIOAppCacheStatistic) == size) {
        IjkIOAppCacheStatistic *statistic = (IjkIOAppCacheStatistic *) (intptr_t)data;
        ffp->stat.cache_physical_pos = statistic->cache_physical_pos;
        ffp->stat.cache_file_forwards = statistic->cache_file_forwards;
        ffp->stat.cache_file_pos = statistic->cache_file_pos;
        ffp->stat.cache_count_bytes = statistic->cache_count_bytes;
        ffp->stat.logical_file_size = statistic->logical_file_size;
    }

    return 0;
}
