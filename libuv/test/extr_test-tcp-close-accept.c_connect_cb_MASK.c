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
typedef  int /*<<< orphan*/  uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/ * connect_reqs ; 
 size_t pending_incoming ; 
 int /*<<< orphan*/  tcp_check ; 
 int /*<<< orphan*/  tcp_check_req ; 
 int /*<<< orphan*/ * tcp_incoming ; 
 int /*<<< orphan*/ * tcp_outgoing ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/ * write_reqs ; 

__attribute__((used)) static void FUNC5(uv_connect_t* req, int status) {
  unsigned int i;
  uv_buf_t buf;
  uv_stream_t* outgoing;

  if (req == &tcp_check_req) {
    FUNC1(status != 0);

    /*
     * Time to finish the test: close both the check and pending incoming
     * connections
     */
    FUNC3((uv_handle_t*) &tcp_incoming[pending_incoming], close_cb);
    FUNC3((uv_handle_t*) &tcp_check, close_cb);
    return;
  }

  FUNC1(status == 0);
  FUNC1(connect_reqs <= req);
  FUNC1(req <= connect_reqs + FUNC0(connect_reqs));
  i = req - connect_reqs;

  buf = FUNC2("x", 1);
  outgoing = (uv_stream_t*) &tcp_outgoing[i];
  FUNC1(0 == FUNC4(&write_reqs[i], outgoing, &buf, 1, write_cb));
}