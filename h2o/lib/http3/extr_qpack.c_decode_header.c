
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_qpack_header_t {TYPE_4__* name; int value_len; int value; } ;
struct st_h2o_qpack_decode_header_ctx_t {int base_index; TYPE_2__* qpack; } ;
struct TYPE_14__ {int * base; } ;
struct TYPE_13__ {TYPE_1__* name; TYPE_4__ value; } ;
typedef TYPE_3__ h2o_qpack_static_table_entry_t ;
typedef int h2o_mem_pool_t ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_12__ {int table; } ;
struct TYPE_11__ {int buf; } ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 TYPE_4__* decode_header_name_literal (int *,int const**,int const*,int,char const**) ;
 TYPE_4__ decode_header_value_literal (int *,int const**,int const*,char const**) ;
 TYPE_4__ h2o_iovec_init (int ,int ) ;
 int h2o_mem_link_shared (int *,struct st_h2o_qpack_header_t*) ;
 struct st_h2o_qpack_header_t* resolve_dynamic (int *,int ,int const**,int const*,int,char const**) ;
 struct st_h2o_qpack_header_t* resolve_dynamic_postbase (int *,int ,int const**,int const*,int,char const**) ;
 TYPE_3__* resolve_static (int const**,int const*,int,char const**) ;

__attribute__((used)) static int decode_header(h2o_mem_pool_t *pool, void *_ctx, h2o_iovec_t **name, h2o_iovec_t *value, const uint8_t **src,
                         const uint8_t *src_end, const char **err_desc)
{
    struct st_h2o_qpack_decode_header_ctx_t *ctx = _ctx;

    switch (**src >> 4) {
    case 12:
    case 13:
    case 14:
    case 15: {
        const h2o_qpack_static_table_entry_t *entry;
        if ((entry = resolve_static(src, src_end, 6, err_desc)) == ((void*)0))
            goto Fail;
        *name = (h2o_iovec_t *)&entry->name->buf;
        *value = entry->value;
    } break;
    case 8:
    case 9:
    case 10:
    case 11: {
        struct st_h2o_qpack_header_t *entry;
        if ((entry = resolve_dynamic(&ctx->qpack->table, ctx->base_index, src, src_end, 6, err_desc)) == ((void*)0))
            goto Fail;
        h2o_mem_link_shared(pool, entry);
        *name = entry->name;
        *value = h2o_iovec_init(entry->value, entry->value_len);
    } break;
    case 5:
    case 7: {
        const h2o_qpack_static_table_entry_t *entry;
        if ((entry = resolve_static(src, src_end, 4, err_desc)) == ((void*)0))
            goto Fail;
        *name = (h2o_iovec_t *)&entry->name->buf;
        if ((*value = decode_header_value_literal(pool, src, src_end, err_desc)).base == ((void*)0))
            goto Fail;
    } break;
    case 4:
    case 6: {
        struct st_h2o_qpack_header_t *entry;
        if ((entry = resolve_dynamic(&ctx->qpack->table, ctx->base_index, src, src_end, 4, err_desc)) == ((void*)0))
            goto Fail;
        h2o_mem_link_shared(pool, entry);
        *name = entry->name;
        if ((*value = decode_header_value_literal(pool, src, src_end, err_desc)).base == ((void*)0))
            goto Fail;
    } break;
    case 2:
    case 3: {
        if ((*name = decode_header_name_literal(pool, src, src_end, 3, err_desc)) == ((void*)0))
            goto Fail;
        if ((*value = decode_header_value_literal(pool, src, src_end, err_desc)).base == ((void*)0))
            goto Fail;
    } break;
    case 1: {
        struct st_h2o_qpack_header_t *entry;
        if ((entry = resolve_dynamic_postbase(&ctx->qpack->table, ctx->base_index, src, src_end, 4, err_desc)) == ((void*)0))
            goto Fail;
        h2o_mem_link_shared(pool, entry);
        *name = entry->name;
        *value = h2o_iovec_init(entry->value, entry->value_len);
    } break;
    case 0: {
        struct st_h2o_qpack_header_t *entry;
        if ((entry = resolve_dynamic_postbase(&ctx->qpack->table, ctx->base_index, src, src_end, 3, err_desc)) == ((void*)0))
            goto Fail;
        h2o_mem_link_shared(pool, entry);
        *name = entry->name;
        if ((*value = decode_header_value_literal(pool, src, src_end, err_desc)).base == ((void*)0))
            goto Fail;
    } break;
    }

    return 0;
Fail:
    return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
}
