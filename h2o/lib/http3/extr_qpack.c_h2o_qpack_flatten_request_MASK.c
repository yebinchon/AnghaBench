#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_qpack_flatten_context_t {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ h2o_url_scheme_t ;
typedef  int /*<<< orphan*/  h2o_qpack_encoder_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_header_t ;
typedef  int /*<<< orphan*/  h2o_byte_vector_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_TOKEN_AUTHORITY ; 
 int /*<<< orphan*/  H2O_TOKEN_METHOD ; 
 int /*<<< orphan*/  H2O_TOKEN_PATH ; 
 int /*<<< orphan*/  H2O_TOKEN_SCHEME ; 
 TYPE_1__ const H2O_URL_SCHEME_HTTP ; 
 TYPE_1__ const H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_qpack_flatten_context_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_qpack_flatten_context_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_qpack_flatten_context_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_qpack_flatten_context_t*,int) ; 
 int /*<<< orphan*/  h2o_qpack_lookup_authority ; 
 int /*<<< orphan*/  h2o_qpack_lookup_method ; 
 int /*<<< orphan*/  h2o_qpack_lookup_path ; 
 int /*<<< orphan*/  h2o_qpack_lookup_scheme ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_qpack_flatten_context_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(h2o_qpack_encoder_t *_qpack, h2o_mem_pool_t *_pool, int64_t _stream_id,
                               h2o_byte_vector_t *_encoder_buf, h2o_byte_vector_t *_headers_buf, h2o_iovec_t method,
                               const h2o_url_scheme_t *scheme, h2o_iovec_t authority, h2o_iovec_t path, const h2o_header_t *headers,
                               size_t num_headers)
{
    struct st_h2o_qpack_flatten_context_t ctx;

    FUNC4(&ctx, _qpack, _pool, _stream_id, _encoder_buf, _headers_buf);

    /* pseudo headers */
    FUNC2(&ctx, h2o_qpack_lookup_method, H2O_TOKEN_METHOD, method);
    if (scheme == &H2O_URL_SCHEME_HTTP) {
        FUNC3(&ctx, 22);
    } else if (scheme == &H2O_URL_SCHEME_HTTPS) {
        FUNC3(&ctx, 23);
    } else {
        FUNC2(&ctx, h2o_qpack_lookup_scheme, H2O_TOKEN_SCHEME, scheme->name);
    }
    FUNC2(&ctx, h2o_qpack_lookup_authority, H2O_TOKEN_AUTHORITY, authority);
    FUNC2(&ctx, h2o_qpack_lookup_path, H2O_TOKEN_PATH, path);

    /* flatten headers */
    size_t i;
    for (i = 0; i != num_headers; ++i)
        FUNC1(&ctx, headers + i);

    FUNC0(&ctx);
}