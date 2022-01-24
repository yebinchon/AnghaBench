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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;
typedef  int uv_os_fd_t ;
typedef  scalar_t__ uv_handle_type ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ UV_EOF ; 
 scalar_t__ UV_TCP ; 
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  echo_read ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(uv_stream_t *q, ssize_t nread, const uv_buf_t *buf) {
    if (nread < 0) {
        if (nread != UV_EOF)
            FUNC1(stderr, "Read error %s\n", FUNC6(nread));
        FUNC5((uv_handle_t*) q, NULL);
        return;
    }

    uv_pipe_t *pipe = (uv_pipe_t*) q;
    if (!FUNC8(pipe)) {
        FUNC1(stderr, "No pending count\n");
        return;
    }

    uv_handle_type pending = FUNC9(pipe);
    FUNC0(pending == UV_TCP);

    uv_tcp_t *client = (uv_tcp_t*) FUNC3(sizeof(uv_tcp_t));
    FUNC11(loop, client);
    if (FUNC4(q, (uv_stream_t*) client) == 0) {
        uv_os_fd_t fd;
        FUNC7((const uv_handle_t*) client, &fd);
        FUNC1(stderr, "Worker %d: Accepted fd %d\n", FUNC2(), fd);
        FUNC10((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        FUNC5((uv_handle_t*) client, NULL);
    }
}