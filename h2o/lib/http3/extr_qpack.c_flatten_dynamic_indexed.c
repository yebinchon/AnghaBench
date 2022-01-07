
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_qpack_flatten_context_t {scalar_t__ largest_ref; scalar_t__ base_index; TYPE_1__* headers_buf; int pool; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {size_t size; int* entries; } ;


 scalar_t__ H2O_HPACK_ENCODE_INT_MAX_LENGTH ;
 int flatten_int (TYPE_1__*,scalar_t__,int) ;
 int h2o_vector_reserve (int ,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void flatten_dynamic_indexed(struct st_h2o_qpack_flatten_context_t *ctx, int64_t index)
{
    h2o_vector_reserve(ctx->pool, ctx->headers_buf, ctx->headers_buf->size + H2O_HPACK_ENCODE_INT_MAX_LENGTH);

    if (index > ctx->largest_ref)
        ctx->largest_ref = index;

    if (index <= ctx->base_index) {

        ctx->headers_buf->entries[ctx->headers_buf->size] = 0x80;
        flatten_int(ctx->headers_buf, ctx->base_index - index, 6);
    } else {

        ctx->headers_buf->entries[ctx->headers_buf->size] = 0x10;
        flatten_int(ctx->headers_buf, index - ctx->base_index - 1, 4);
    }
}
