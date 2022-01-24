#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct st_h2o_http2client_conn_t {TYPE_1__ output; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ h2o_http2_ping_payload_t ;
struct TYPE_9__ {int flags; } ;
typedef  TYPE_3__ h2o_http2_frame_t ;

/* Variables and functions */
 int H2O_HTTP2_FRAME_FLAG_ACK ; 
 int FUNC0 (TYPE_2__*,TYPE_3__*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http2client_conn_t*) ; 

__attribute__((used)) static int FUNC3(struct st_h2o_http2client_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_ping_payload_t payload;
    int ret;

    if ((ret = FUNC0(&payload, frame, err_desc)) != 0)
        return ret;

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_ACK) == 0) {
        FUNC1(&conn->output.buf, 1, payload.data);
        FUNC2(conn);
    }

    return 0;
}