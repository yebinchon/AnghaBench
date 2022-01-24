#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  h2o_url_scheme_t ;
typedef  int /*<<< orphan*/  h2o_qpack_encoder_t ;
typedef  int /*<<< orphan*/  h2o_qpack_decoder_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_19__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ h2o_iovec_t ;
struct TYPE_20__ {int size; TYPE_13__* entries; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_4__ h2o_headers_t ;
struct TYPE_21__ {scalar_t__ size; int /*<<< orphan*/  const* entries; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_5__ h2o_byte_vector_t ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_17__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_16__ {TYPE_2__ value; TYPE_1__* name; } ;

/* Variables and functions */
 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  const H2O_URL_SCHEME_HTTPS ; 
 size_t SIZE_MAX ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_13__*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/  const**,TYPE_3__*,TYPE_3__*,TYPE_4__*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t*,int /*<<< orphan*/  const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(int use_enc_stream)
{
    h2o_qpack_decoder_t *dec = FUNC8(4096, 10);
    h2o_qpack_encoder_t *enc = FUNC9(4096, 10);
    h2o_mem_pool_t pool;
    h2o_byte_vector_t *enc_stream = NULL, flattened = {NULL};
    uint8_t header_ack[H2O_HPACK_ENCODE_INT_MAX_LENGTH];
    size_t header_ack_len;
    const char *err_desc = NULL;
    int ret;

    FUNC6(&pool);

    if (use_enc_stream) {
        enc_stream = FUNC1(sizeof(*enc_stream));
        FUNC15(enc_stream, 0, sizeof(*enc_stream));
    }

    {
        h2o_headers_t headers = {NULL};
        FUNC3(&pool, &headers, FUNC0("x-hoge"), 0, NULL, FUNC0("\x01\x02\x03")); /* literal, non-huff */
        FUNC13(enc, &pool, 123, enc_stream, &flattened, FUNC4(FUNC0("GET")), &H2O_URL_SCHEME_HTTPS,
                                  FUNC4(FUNC0("example.com")), FUNC4(FUNC0("/foobar")), headers.entries,
                                  headers.size);
    }

    if (enc_stream != NULL) {
        int64_t *unblocked_stream_ids;
        size_t num_unblocked;
        FUNC2(enc_stream->size != 0);
        const uint8_t *p = enc_stream->entries;
        ret = FUNC10(dec, &unblocked_stream_ids, &num_unblocked, &p, p + enc_stream->size, &err_desc);
        FUNC2(ret == 0);
        FUNC2(p == enc_stream->entries + enc_stream->size);
    }

    {
        h2o_iovec_t method = {NULL}, authority = {NULL}, path = {NULL};
        const h2o_url_scheme_t *scheme = NULL;
        int pseudo_header_exists_map = 0;
        h2o_headers_t headers = {NULL};
        size_t content_length = SIZE_MAX;
        ret = FUNC14(&pool, dec, 0, &method, &scheme, &authority, &path, &headers, &pseudo_header_exists_map,
                                      &content_length, NULL, header_ack, &header_ack_len, flattened.entries, flattened.size,
                                      &err_desc);
        FUNC16(ret == 0);
        FUNC16(FUNC7(method.base, method.len, FUNC0("GET")));
        FUNC16(scheme == &H2O_URL_SCHEME_HTTPS);
        FUNC16(FUNC7(authority.base, authority.len, FUNC0("example.com")));
        FUNC16(FUNC7(path.base, path.len, FUNC0("/foobar")));
        FUNC16(headers.size == 1);
        FUNC16(FUNC7(headers.entries[0].name->base, headers.entries[0].name->len, FUNC0("x-hoge")));
        FUNC16(FUNC7(headers.entries[0].value.base, headers.entries[0].value.len, FUNC0("\x01\x02\x03")));
    }

    if (enc_stream != NULL) {
        FUNC16(header_ack_len != 0);
    } else {
        FUNC16(header_ack_len == 0);
    }

    FUNC5(&pool);
    FUNC11(dec);
    FUNC12(enc);
}