
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t max_buffer_size; } ;
typedef TYPE_1__ h2o_httpclient_ctx_t ;


 size_t INT32_MAX ;

__attribute__((used)) static uint32_t get_max_buffer_size(h2o_httpclient_ctx_t *ctx)
{
    size_t sz = ctx->max_buffer_size;
    if (sz > INT32_MAX)
        sz = INT32_MAX;
    return (uint32_t)sz;
}
