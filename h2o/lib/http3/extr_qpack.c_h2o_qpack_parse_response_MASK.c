#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct st_h2o_qpack_decode_header_ctx_t {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  h2o_qpack_decoder_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
typedef  int /*<<< orphan*/  h2o_headers_t ;

/* Variables and functions */
 int /*<<< orphan*/  decode_header ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct st_h2o_qpack_decode_header_ctx_t*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,char const**) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct st_h2o_qpack_decode_header_ctx_t*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,struct st_h2o_qpack_decode_header_ctx_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(h2o_mem_pool_t *pool, h2o_qpack_decoder_t *qpack, int64_t stream_id, int *status,
                             h2o_headers_t *headers, uint8_t *outbuf, size_t *outbufsize, const uint8_t *_src, size_t len,
                             const char **err_desc)
{
    struct st_h2o_qpack_decode_header_ctx_t ctx;
    const uint8_t *src = _src, *src_end = src + len;
    int ret;

    if ((ret = FUNC2(qpack, &ctx, stream_id, &src, src_end)) != 0)
        return ret;
    if ((ret = FUNC0(pool, decode_header, &ctx, status, headers, src, src_end - src, err_desc)) != 0)
        return FUNC1(ret);

    *outbufsize = FUNC3(qpack, &ctx, outbuf, stream_id);
    return 0;
}