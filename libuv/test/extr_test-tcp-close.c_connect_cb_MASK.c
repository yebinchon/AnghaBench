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
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_WRITE_REQS ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  tcp_handle ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 

__attribute__((used)) static void FUNC5(uv_connect_t* conn_req, int status) {
  uv_write_t* req;
  uv_buf_t buf;
  int i, r;

  buf = FUNC2("PING", 4);
  for (i = 0; i < NUM_WRITE_REQS; i++) {
    req = FUNC1(sizeof *req);
    FUNC0(req != NULL);

    r = FUNC4(req, (uv_stream_t*)&tcp_handle, &buf, 1, write_cb);
    FUNC0(r == 0);
  }

  FUNC3((uv_handle_t*)&tcp_handle, close_cb);
}