#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_2__ h2o_http2_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {TYPE_1__ _write; } ;
typedef  TYPE_3__ h2o_http2_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_ERROR_REFUSED_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    FUNC1(&conn->_write.buf, stream->stream_id, -H2O_HTTP2_ERROR_REFUSED_STREAM);
    FUNC0(conn);
    FUNC2(conn, stream);
}