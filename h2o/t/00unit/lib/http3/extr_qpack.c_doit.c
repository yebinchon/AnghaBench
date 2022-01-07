
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef int const uint8_t ;
typedef int int64_t ;
typedef int h2o_url_scheme_t ;
typedef int h2o_qpack_encoder_t ;
typedef int h2o_qpack_decoder_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_19__ {int len; int base; int * member_0; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_20__ {int size; TYPE_13__* entries; int * member_0; } ;
typedef TYPE_4__ h2o_headers_t ;
struct TYPE_21__ {scalar_t__ size; int const* entries; int * member_0; } ;
typedef TYPE_5__ h2o_byte_vector_t ;
struct TYPE_18__ {int len; int base; } ;
struct TYPE_17__ {int len; int base; } ;
struct TYPE_16__ {TYPE_2__ value; TYPE_1__* name; } ;


 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ;
 int H2O_STRLIT (char*) ;
 int const H2O_URL_SCHEME_HTTPS ;
 size_t SIZE_MAX ;
 TYPE_5__* alloca (int) ;
 int assert (int) ;
 int h2o_add_header_by_str (int *,TYPE_4__*,int ,int ,int *,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_memis (int ,int ,int ) ;
 int * h2o_qpack_create_decoder (int,int) ;
 int * h2o_qpack_create_encoder (int,int) ;
 int h2o_qpack_decoder_handle_input (int *,int **,size_t*,int const**,int const*,char const**) ;
 int h2o_qpack_destroy_decoder (int *) ;
 int h2o_qpack_destroy_encoder (int *) ;
 int h2o_qpack_flatten_request (int *,int *,int,TYPE_5__*,TYPE_5__*,int ,int const*,int ,int ,TYPE_13__*,int) ;
 int h2o_qpack_parse_request (int *,int *,int ,TYPE_3__*,int const**,TYPE_3__*,TYPE_3__*,TYPE_4__*,int*,size_t*,int *,int const*,size_t*,int const*,int,char const**) ;
 int memset (TYPE_5__*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void doit(int use_enc_stream)
{
    h2o_qpack_decoder_t *dec = h2o_qpack_create_decoder(4096, 10);
    h2o_qpack_encoder_t *enc = h2o_qpack_create_encoder(4096, 10);
    h2o_mem_pool_t pool;
    h2o_byte_vector_t *enc_stream = ((void*)0), flattened = {((void*)0)};
    uint8_t header_ack[H2O_HPACK_ENCODE_INT_MAX_LENGTH];
    size_t header_ack_len;
    const char *err_desc = ((void*)0);
    int ret;

    h2o_mem_init_pool(&pool);

    if (use_enc_stream) {
        enc_stream = alloca(sizeof(*enc_stream));
        memset(enc_stream, 0, sizeof(*enc_stream));
    }

    {
        h2o_headers_t headers = {((void*)0)};
        h2o_add_header_by_str(&pool, &headers, H2O_STRLIT("x-hoge"), 0, ((void*)0), H2O_STRLIT("\x01\x02\x03"));
        h2o_qpack_flatten_request(enc, &pool, 123, enc_stream, &flattened, h2o_iovec_init(H2O_STRLIT("GET")), &H2O_URL_SCHEME_HTTPS,
                                  h2o_iovec_init(H2O_STRLIT("example.com")), h2o_iovec_init(H2O_STRLIT("/foobar")), headers.entries,
                                  headers.size);
    }

    if (enc_stream != ((void*)0)) {
        int64_t *unblocked_stream_ids;
        size_t num_unblocked;
        assert(enc_stream->size != 0);
        const uint8_t *p = enc_stream->entries;
        ret = h2o_qpack_decoder_handle_input(dec, &unblocked_stream_ids, &num_unblocked, &p, p + enc_stream->size, &err_desc);
        assert(ret == 0);
        assert(p == enc_stream->entries + enc_stream->size);
    }

    {
        h2o_iovec_t method = {((void*)0)}, authority = {((void*)0)}, path = {((void*)0)};
        const h2o_url_scheme_t *scheme = ((void*)0);
        int pseudo_header_exists_map = 0;
        h2o_headers_t headers = {((void*)0)};
        size_t content_length = SIZE_MAX;
        ret = h2o_qpack_parse_request(&pool, dec, 0, &method, &scheme, &authority, &path, &headers, &pseudo_header_exists_map,
                                      &content_length, ((void*)0), header_ack, &header_ack_len, flattened.entries, flattened.size,
                                      &err_desc);
        ok(ret == 0);
        ok(h2o_memis(method.base, method.len, H2O_STRLIT("GET")));
        ok(scheme == &H2O_URL_SCHEME_HTTPS);
        ok(h2o_memis(authority.base, authority.len, H2O_STRLIT("example.com")));
        ok(h2o_memis(path.base, path.len, H2O_STRLIT("/foobar")));
        ok(headers.size == 1);
        ok(h2o_memis(headers.entries[0].name->base, headers.entries[0].name->len, H2O_STRLIT("x-hoge")));
        ok(h2o_memis(headers.entries[0].value.base, headers.entries[0].value.len, H2O_STRLIT("\x01\x02\x03")));
    }

    if (enc_stream != ((void*)0)) {
        ok(header_ack_len != 0);
    } else {
        ok(header_ack_len == 0);
    }

    h2o_mem_clear_pool(&pool);
    h2o_qpack_destroy_decoder(dec);
    h2o_qpack_destroy_encoder(enc);
}
