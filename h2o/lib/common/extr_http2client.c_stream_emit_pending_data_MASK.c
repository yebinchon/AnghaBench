#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  window; TYPE_7__* buf; } ;
struct TYPE_8__ {scalar_t__ done; int /*<<< orphan*/ * proceed_req; } ;
struct st_h2o_http2client_stream_t {TYPE_4__ output; TYPE_3__* conn; int /*<<< orphan*/  stream_id; TYPE_1__ streaming; } ;
struct TYPE_14__ {size_t size; int /*<<< orphan*/  bytes; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; } ;
struct TYPE_12__ {char* base; } ;
struct TYPE_9__ {int /*<<< orphan*/  window; TYPE_6__* buf; } ;
struct TYPE_10__ {TYPE_2__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_FRAME_FLAG_END_STREAM ; 
 int H2O_HTTP2_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  H2O_HTTP2_FRAME_TYPE_DATA ; 
 size_t FUNC0 (struct st_h2o_http2client_stream_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__**,size_t) ; 
 TYPE_5__ FUNC2 (TYPE_6__**,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (size_t,size_t) ; 

__attribute__((used)) static size_t FUNC7(struct st_h2o_http2client_stream_t *stream)
{
    size_t max_payload_size = FUNC0(stream);
    size_t payload_size = FUNC6(max_payload_size, stream->output.buf->size);
    if (payload_size == 0)
        return 0;
    char *dst = FUNC2(&stream->conn->output.buf, H2O_HTTP2_FRAME_HEADER_SIZE + payload_size).base;
    int end_stream = (stream->streaming.proceed_req == NULL || stream->streaming.done) && payload_size == stream->output.buf->size;
    FUNC3((void *)dst, stream->output.buf->size, H2O_HTTP2_FRAME_TYPE_DATA,
                                  end_stream ? H2O_HTTP2_FRAME_FLAG_END_STREAM : 0, stream->stream_id);
    FUNC5(dst + H2O_HTTP2_FRAME_HEADER_SIZE, stream->output.buf->bytes, payload_size);
    stream->conn->output.buf->size += H2O_HTTP2_FRAME_HEADER_SIZE + payload_size;
    FUNC1(&stream->output.buf, payload_size);

    FUNC4(&stream->conn->output.window, payload_size);
    FUNC4(&stream->output.window, payload_size);

    return payload_size;
}