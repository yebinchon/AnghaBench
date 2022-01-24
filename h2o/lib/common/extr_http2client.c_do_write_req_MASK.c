#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sending_link; int /*<<< orphan*/ * buf; } ;
struct TYPE_7__ {int done; int /*<<< orphan*/ * proceed_req; } ;
struct st_h2o_http2client_stream_t {TYPE_5__* conn; TYPE_3__ output; TYPE_1__ streaming; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;
struct TYPE_8__ {int /*<<< orphan*/  sending_streams; } ;
struct TYPE_11__ {TYPE_2__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC6(h2o_httpclient_t *_client, h2o_iovec_t chunk, int is_end_stream)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    FUNC0(stream->streaming.proceed_req != NULL);

    if (is_end_stream)
        stream->streaming.done = 1;

    if (stream->output.buf == NULL) {
        FUNC2(&stream->output.buf, &h2o_socket_buffer_prototype);
    }

    if (chunk.len != 0) {
        FUNC1(&stream->output.buf, chunk.base, chunk.len);
    }

    if (!FUNC4(&stream->output.sending_link)) {
        FUNC3(&stream->conn->output.sending_streams, &stream->output.sending_link);
        FUNC5(stream->conn);
    }

    return 0;
}