#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_stream_id_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
struct TYPE_3__ {scalar_t__ off; scalar_t__ base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC3(quicly_conn_t *conn, ptls_buffer_t *tlsbuf, size_t epoch_offsets[5])
{
    size_t epoch;
    int ret;

    if (tlsbuf->off == 0)
        return 0;

    for (epoch = 0; epoch < 4; ++epoch) {
        size_t len = epoch_offsets[epoch + 1] - epoch_offsets[epoch];
        if (len == 0)
            continue;
        quicly_stream_t *stream = FUNC1(conn, -(quicly_stream_id_t)(1 + epoch));
        FUNC0(stream != NULL);
        if ((ret = FUNC2(stream, tlsbuf->base + epoch_offsets[epoch], len)) != 0)
            return ret;
    }

    return 0;
}