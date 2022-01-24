#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ write_req_t ;
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  echo_write ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC7(uv_stream_t *client, ssize_t nread, const uv_buf_t *buf) {
    if (nread > 0) {
        write_req_t *req = (write_req_t*) FUNC2(sizeof(write_req_t));
        req->buf = FUNC3(buf->base, nread);
        FUNC6((uv_write_t*) req, client, &req->buf, 1, echo_write);
        return;
    }

    if (nread < 0) {
        if (nread != UV_EOF)
            FUNC0(stderr, "Read error %s\n", FUNC5(nread));
        FUNC4((uv_handle_t*) client, NULL);
    }

    FUNC1(buf->base);
}