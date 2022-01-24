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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  h2o_qpack_encoder_t ;

/* Variables and functions */
 int H2O_HTTP3_ERROR_INCOMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ *,int const**,int const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 

int FUNC4(h2o_qpack_encoder_t *qpack, const uint8_t **_src, const uint8_t *src_end, const char **err_desc)
{
    const uint8_t *src = *_src;
    int ret = 0;

    while (src != src_end && ret == 0) {
        switch (*src >> 6) {
        case 0: /* table state synchronize */ {
            int64_t insert_count;
            if ((ret = FUNC0(&insert_count, &src, src_end, 6)) != 0)
                goto Exit;
            ret = FUNC3(qpack, insert_count, err_desc);
        } break;
        default: /* header ack */ {
            int64_t stream_id;
            if ((ret = FUNC0(&stream_id, &src, src_end, 7)) != 0)
                goto Exit;
            ret = FUNC1(qpack, stream_id, err_desc);
        } break;
        case 1: /* stream cancellation */ {
            int64_t stream_id;
            if ((ret = FUNC0(&stream_id, &src, src_end, 6)) != 0)
                goto Exit;
            ret = FUNC2(qpack, stream_id, err_desc);
        } break;
        }
        *_src = src;
    }

Exit:
    if (ret == H2O_HTTP3_ERROR_INCOMPLETE)
        ret = 0;
    return (int)ret;
}