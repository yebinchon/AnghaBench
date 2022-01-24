#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http3_egress_unistream_t {TYPE_1__* quic; int /*<<< orphan*/  sendbuf; } ;
struct TYPE_8__ {struct st_h2o_http3_egress_unistream_t* data; } ;
typedef  TYPE_1__ quicly_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ h2o_iovec_t ;
struct TYPE_10__ {int /*<<< orphan*/  quic; } ;
typedef  TYPE_3__ h2o_http3_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__**,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(h2o_http3_conn_t *conn, struct st_h2o_http3_egress_unistream_t **stream, h2o_iovec_t initial_bytes)
{
    quicly_stream_t *qs;
    int ret;

    if ((ret = FUNC2(conn->quic, &qs, 1)) != 0)
        return ret;
    *stream = qs->data;
    FUNC0((*stream)->quic == qs);

    FUNC1(&(*stream)->sendbuf, initial_bytes.base, initial_bytes.len);
    return FUNC3((*stream)->quic, 1);
}