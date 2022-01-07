
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int dummy; } ;
typedef int h2o_timestamp_string_t ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_8__ {TYPE_1__ tv_at; TYPE_4__* value; } ;
struct TYPE_9__ {TYPE_2__ _timestamp_cache; } ;
typedef TYPE_3__ h2o_context_t ;
struct TYPE_10__ {int log; int rfc1123; } ;


 int gmtime_r (int *,struct tm*) ;
 TYPE_4__* h2o_mem_alloc_shared (int *,int,int *) ;
 int h2o_mem_release_shared (TYPE_4__*) ;
 int h2o_time2str_log (int ,int ) ;
 int h2o_time2str_rfc1123 (int ,struct tm*) ;

void h2o_context_update_timestamp_string_cache(h2o_context_t *ctx)
{
    struct tm gmt;
    if (ctx->_timestamp_cache.value != ((void*)0))
        h2o_mem_release_shared(ctx->_timestamp_cache.value);
    ctx->_timestamp_cache.value = h2o_mem_alloc_shared(((void*)0), sizeof(h2o_timestamp_string_t), ((void*)0));
    gmtime_r(&ctx->_timestamp_cache.tv_at.tv_sec, &gmt);
    h2o_time2str_rfc1123(ctx->_timestamp_cache.value->rfc1123, &gmt);
    h2o_time2str_log(ctx->_timestamp_cache.value->log, ctx->_timestamp_cache.tv_at.tv_sec);
}
