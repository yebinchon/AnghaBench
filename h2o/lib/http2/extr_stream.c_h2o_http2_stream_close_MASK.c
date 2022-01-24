#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int stream_id; int /*<<< orphan*/  req; int /*<<< orphan*/ * req_body; int /*<<< orphan*/ * cache_digests; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * _http1_req_input; } ;
typedef  TYPE_2__ h2o_http2_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 

void FUNC5(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    FUNC4(conn, stream);
    if (stream->cache_digests != NULL)
        FUNC2(stream->cache_digests);
    if (stream->req_body != NULL)
        FUNC1(&stream->req_body);
    FUNC3(&stream->req);
    if (stream->stream_id == 1 && conn->_http1_req_input != NULL)
        FUNC1(&conn->_http1_req_input);
    FUNC0(stream);
}