#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_h2o_http2client_stream_t {int /*<<< orphan*/  stream_id; int /*<<< orphan*/  conn; } ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_ERROR_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http2client_stream_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(h2o_httpclient_t *_client)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    FUNC1(stream->conn, stream->stream_id, H2O_HTTP2_ERROR_CANCEL);
    FUNC0(stream);
}