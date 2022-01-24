#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  req; int /*<<< orphan*/  _link; } ;
typedef  TYPE_2__ h2o_http2_stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  blocked_streams; } ;
struct TYPE_9__ {TYPE_1__ early_data; TYPE_4__* sock; } ;
typedef  TYPE_3__ h2o_http2_conn_t ;
struct TYPE_10__ {int /*<<< orphan*/ * ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 

void FUNC3(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (conn->sock->ssl != NULL && FUNC2(conn->sock)) {
        FUNC0(&conn->early_data.blocked_streams, &stream->_link);
    } else {
        FUNC1(&stream->req);
    }
}