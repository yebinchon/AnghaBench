
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_qpack_flatten_context_t {int dummy; } ;
typedef int int64_t ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ h2o_url_scheme_t ;
typedef int h2o_qpack_encoder_t ;
typedef int h2o_mem_pool_t ;
typedef int h2o_iovec_t ;
typedef int h2o_header_t ;
typedef int h2o_byte_vector_t ;


 int H2O_TOKEN_AUTHORITY ;
 int H2O_TOKEN_METHOD ;
 int H2O_TOKEN_PATH ;
 int H2O_TOKEN_SCHEME ;
 TYPE_1__ const H2O_URL_SCHEME_HTTP ;
 TYPE_1__ const H2O_URL_SCHEME_HTTPS ;
 int commit_flatten (struct st_h2o_qpack_flatten_context_t*) ;
 int flatten_header (struct st_h2o_qpack_flatten_context_t*,int const*) ;
 int flatten_known_header_with_static_lookup (struct st_h2o_qpack_flatten_context_t*,int ,int ,int ) ;
 int flatten_static_indexed (struct st_h2o_qpack_flatten_context_t*,int) ;
 int h2o_qpack_lookup_authority ;
 int h2o_qpack_lookup_method ;
 int h2o_qpack_lookup_path ;
 int h2o_qpack_lookup_scheme ;
 int prepare_flatten (struct st_h2o_qpack_flatten_context_t*,int *,int *,int ,int *,int *) ;

void h2o_qpack_flatten_request(h2o_qpack_encoder_t *_qpack, h2o_mem_pool_t *_pool, int64_t _stream_id,
                               h2o_byte_vector_t *_encoder_buf, h2o_byte_vector_t *_headers_buf, h2o_iovec_t method,
                               const h2o_url_scheme_t *scheme, h2o_iovec_t authority, h2o_iovec_t path, const h2o_header_t *headers,
                               size_t num_headers)
{
    struct st_h2o_qpack_flatten_context_t ctx;

    prepare_flatten(&ctx, _qpack, _pool, _stream_id, _encoder_buf, _headers_buf);


    flatten_known_header_with_static_lookup(&ctx, h2o_qpack_lookup_method, H2O_TOKEN_METHOD, method);
    if (scheme == &H2O_URL_SCHEME_HTTP) {
        flatten_static_indexed(&ctx, 22);
    } else if (scheme == &H2O_URL_SCHEME_HTTPS) {
        flatten_static_indexed(&ctx, 23);
    } else {
        flatten_known_header_with_static_lookup(&ctx, h2o_qpack_lookup_scheme, H2O_TOKEN_SCHEME, scheme->name);
    }
    flatten_known_header_with_static_lookup(&ctx, h2o_qpack_lookup_authority, H2O_TOKEN_AUTHORITY, authority);
    flatten_known_header_with_static_lookup(&ctx, h2o_qpack_lookup_path, H2O_TOKEN_PATH, path);


    size_t i;
    for (i = 0; i != num_headers; ++i)
        flatten_header(&ctx, headers + i);

    commit_flatten(&ctx);
}
