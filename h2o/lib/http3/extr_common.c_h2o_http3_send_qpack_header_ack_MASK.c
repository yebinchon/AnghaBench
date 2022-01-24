#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http3_egress_unistream_t {int /*<<< orphan*/  quic; int /*<<< orphan*/  sendbuf; } ;
struct TYPE_5__ {struct st_h2o_http3_egress_unistream_t* qpack_encoder; } ;
struct TYPE_6__ {TYPE_1__ egress; } ;
struct TYPE_7__ {TYPE_2__ _control_streams; } ;
typedef  TYPE_3__ h2o_http3_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(h2o_http3_conn_t *conn, const void *bytes, size_t len)
{
    struct st_h2o_http3_egress_unistream_t *stream = conn->_control_streams.egress.qpack_encoder;

    FUNC1(stream != NULL);
    FUNC2(&stream->sendbuf, bytes, len);
    FUNC0(FUNC3(stream->quic, 1));
}