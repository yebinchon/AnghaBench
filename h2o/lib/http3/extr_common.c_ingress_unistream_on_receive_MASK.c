#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct st_h2o_http3_ingress_unistream_t {int (* handle_input ) (int /*<<< orphan*/ *,struct st_h2o_http3_ingress_unistream_t*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,char const**) ;TYPE_2__* quic; TYPE_4__* recvbuf; } ;
struct TYPE_6__ {struct st_h2o_http3_ingress_unistream_t* data; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ quicly_stream_t ;
typedef  int /*<<< orphan*/  h2o_http3_conn_t ;
struct TYPE_8__ {scalar_t__ bytes; } ;
struct TYPE_7__ {int /*<<< orphan*/  recvstate; } ;

/* Variables and functions */
 int H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__**,size_t) ; 
 int FUNC1 (TYPE_4__**,size_t,void const*,size_t) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct st_h2o_http3_ingress_unistream_t*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,char const**) ; 

__attribute__((used)) static int FUNC7(quicly_stream_t *qs, size_t off, const void *input, size_t len)
{
    h2o_http3_conn_t *conn = *FUNC2(qs->conn);
    struct st_h2o_http3_ingress_unistream_t *stream = qs->data;
    int ret;

    /* save received data */
    if ((ret = FUNC1(&stream->recvbuf, off, input, len)) != 0)
        return ret;

    /* respond with fatal error if the stream is closed */
    if (FUNC4(&stream->quic->recvstate))
        return H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM;

    /* determine bytes that can be handled */
    const uint8_t *src = (const uint8_t *)stream->recvbuf->bytes,
                  *src_end = src + FUNC3(&stream->quic->recvstate);
    if (src == src_end)
        return 0;

    /* handle the bytes (TODO retain err_desc) */
    const char *err_desc = NULL;
    ret = stream->handle_input(conn, stream, &src, src_end, &err_desc);

    /* remove bytes that have been consumed */
    size_t bytes_consumed = src - (const uint8_t *)stream->recvbuf->bytes;
    if (bytes_consumed != 0) {
        FUNC0(&stream->recvbuf, bytes_consumed);
        FUNC5(stream->quic, bytes_consumed);
    }

    return ret;
}