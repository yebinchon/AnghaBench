
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_h2o_qpack_decode_header_ctx_t {int dummy; } ;
typedef int int64_t ;
typedef int h2o_qpack_decoder_t ;
typedef int h2o_mem_pool_t ;
typedef int h2o_headers_t ;


 int decode_header ;
 int h2o_hpack_parse_response (int *,int ,struct st_h2o_qpack_decode_header_ctx_t*,int*,int *,int const*,int,char const**) ;
 int normalize_error_code (int) ;
 int parse_decode_context (int *,struct st_h2o_qpack_decode_header_ctx_t*,int ,int const**,int const*) ;
 size_t send_header_ack (int *,struct st_h2o_qpack_decode_header_ctx_t*,int *,int ) ;

int h2o_qpack_parse_response(h2o_mem_pool_t *pool, h2o_qpack_decoder_t *qpack, int64_t stream_id, int *status,
                             h2o_headers_t *headers, uint8_t *outbuf, size_t *outbufsize, const uint8_t *_src, size_t len,
                             const char **err_desc)
{
    struct st_h2o_qpack_decode_header_ctx_t ctx;
    const uint8_t *src = _src, *src_end = src + len;
    int ret;

    if ((ret = parse_decode_context(qpack, &ctx, stream_id, &src, src_end)) != 0)
        return ret;
    if ((ret = h2o_hpack_parse_response(pool, decode_header, &ctx, status, headers, src, src_end - src, err_desc)) != 0)
        return normalize_error_code(ret);

    *outbufsize = send_header_ack(qpack, &ctx, outbuf, stream_id);
    return 0;
}
