
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_h2o_qpack_flatten_context_t {TYPE_3__* headers_buf; int * pool; scalar_t__ header_data_prefix_at; scalar_t__ largest_ref; scalar_t__ base_index; TYPE_3__* encoder_buf; int stream_id; TYPE_2__* qpack; } ;
typedef int int64_t ;
struct TYPE_8__ {scalar_t__ first; scalar_t__ last; scalar_t__ base_offset; } ;
struct TYPE_9__ {scalar_t__ num_blocked; scalar_t__ max_blocked; TYPE_1__ table; } ;
typedef TYPE_2__ h2o_qpack_encoder_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef TYPE_3__ h2o_byte_vector_t ;


 int h2o_vector_reserve (int *,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void prepare_flatten(struct st_h2o_qpack_flatten_context_t *ctx, h2o_qpack_encoder_t *qpack, h2o_mem_pool_t *pool,
                            int64_t stream_id, h2o_byte_vector_t *encoder_buf, h2o_byte_vector_t *headers_buf)
{
    ctx->qpack = qpack;
    ctx->pool = pool;
    ctx->stream_id = stream_id;
    ctx->encoder_buf = qpack != ((void*)0) && qpack->num_blocked < qpack->max_blocked ? encoder_buf : ((void*)0);
    ctx->headers_buf = headers_buf;
    ctx->base_index = qpack != ((void*)0) ? qpack->table.base_offset + qpack->table.last - qpack->table.first - 1 : 0;
    ctx->largest_ref = 0;
    ctx->header_data_prefix_at = headers_buf->size;


    h2o_vector_reserve(ctx->pool, ctx->headers_buf, ctx->headers_buf->size + 2);
    ctx->headers_buf->size += 2;
}
