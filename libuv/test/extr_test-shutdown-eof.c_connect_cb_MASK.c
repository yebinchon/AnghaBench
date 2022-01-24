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
typedef  int /*<<< orphan*/  uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  called_connect_cb ; 
 scalar_t__ called_shutdown_cb ; 
 int /*<<< orphan*/  connect_req ; 
 int /*<<< orphan*/  qbuf ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  shutdown_cb ; 
 int /*<<< orphan*/  shutdown_req ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC4(uv_connect_t *req, int status) {
  FUNC0(status == 0);
  FUNC0(req == &connect_req);

  /* Start reading from our connection so we can receive the EOF.  */
  FUNC1((uv_stream_t*)&tcp, alloc_cb, read_cb);

  /*
   * Write the letter 'Q' to gracefully kill the echo-server. This will not
   * effect our connection.
   */
  FUNC3(&write_req, (uv_stream_t*) &tcp, &qbuf, 1, NULL);

  /* Shutdown our end of the connection.  */
  FUNC2(&shutdown_req, (uv_stream_t*) &tcp, shutdown_cb);

  called_connect_cb++;
  FUNC0(called_shutdown_cb == 0);
}