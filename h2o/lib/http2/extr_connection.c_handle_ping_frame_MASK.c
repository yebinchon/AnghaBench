#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ h2o_http2_ping_payload_t ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_3__ h2o_http2_frame_t ;
struct TYPE_10__ {int /*<<< orphan*/  buf; } ;
struct TYPE_13__ {TYPE_1__ _write; } ;
typedef  TYPE_4__ h2o_http2_conn_t ;

/* Variables and functions */
 int H2O_HTTP2_FRAME_FLAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_ping_payload_t payload;
    int ret;

    if ((ret = FUNC1(&payload, frame, err_desc)) != 0)
        return ret;

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_ACK) == 0) {
        FUNC2(&conn->_write.buf, 1, payload.data);
        FUNC0(conn);
    }

    return 0;
}