
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int logical_file_size; int cache_count_bytes; scalar_t__ cache_file_pos; scalar_t__ cache_file_forwards; int cache_physical_pos; int member_0; } ;
struct TYPE_7__ {scalar_t__ ijkio_app_ctx; int logical_size; int * cache_count_bytes; scalar_t__ file_logical_pos; scalar_t__ read_logical_pos; int cache_physical_pos; } ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ IjkURLContext ;
typedef TYPE_2__ IjkIOCacheContext ;
typedef TYPE_3__ IjkIOAppCacheStatistic ;


 int ijkio_application_on_cache_statistic (scalar_t__,TYPE_3__*) ;

__attribute__((used)) static void call_inject_statistic(IjkURLContext *h)
{
    IjkIOCacheContext *c = h->priv_data;

    if (c->ijkio_app_ctx) {
        IjkIOAppCacheStatistic statistic = {0};
        statistic.cache_physical_pos = c->cache_physical_pos;
        statistic.cache_file_forwards = c->file_logical_pos - c->read_logical_pos;
        statistic.cache_file_pos = c->file_logical_pos;
        statistic.cache_count_bytes = *c->cache_count_bytes;
        statistic.logical_file_size = c->logical_size;
        ijkio_application_on_cache_statistic(c->ijkio_app_ctx, &statistic);
    }
}
