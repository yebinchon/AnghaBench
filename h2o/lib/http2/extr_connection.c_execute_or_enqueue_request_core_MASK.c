#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  _link; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  _pending_reqs; } ;
typedef  TYPE_2__ h2o_http2_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    /* TODO schedule the pending reqs using the scheduler */
    FUNC0(&conn->_pending_reqs, &stream->_link);

    FUNC1(conn);
    FUNC2(conn);
}