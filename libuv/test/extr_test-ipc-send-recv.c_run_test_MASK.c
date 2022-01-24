#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_thread_t ;
typedef  int /*<<< orphan*/  uv_process_t ;
struct TYPE_2__ {int /*<<< orphan*/  connect_req; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PIPENAME_3 ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ ctx ; 
 int /*<<< orphan*/  ipc_send_recv_helper_threadproc ; 
 int recv_cb_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int inprocess) {
  uv_process_t process;
  uv_thread_t tid;
  int r;

  if (inprocess) {
    r = FUNC8(&tid, ipc_send_recv_helper_threadproc, (void *) 42);
    FUNC0(r == 0);

    FUNC7(1000);

    r = FUNC5(FUNC3(), &ctx.channel, 1);
    FUNC0(r == 0);

    FUNC4(&ctx.connect_req, &ctx.channel, TEST_PIPENAME_3, connect_cb);
  } else {
    FUNC2(&ctx.channel, &process, "ipc_send_recv_helper");

    FUNC1(&ctx.connect_req, 0);
  }

  r = FUNC6(FUNC3(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC0(recv_cb_count == 2);

  if (inprocess) {
    r = FUNC9(&tid);
    FUNC0(r == 0);
  }

  return 0;
}