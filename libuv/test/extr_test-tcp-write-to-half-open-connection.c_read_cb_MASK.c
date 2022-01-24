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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_ECONNRESET ; 
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  read_cb_called ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tcp_peer ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {
  if (nread < 0) {
    FUNC1(stderr, "read_cb error: %s\n", FUNC3(nread));
    FUNC0(nread == UV_ECONNRESET || nread == UV_EOF);

    FUNC2((uv_handle_t*)&tcp_server, NULL);
    FUNC2((uv_handle_t*)&tcp_peer, NULL);
  }

  read_cb_called++;
}