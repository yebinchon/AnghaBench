#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  req; } ;
typedef  TYPE_1__ write_req ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_6__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_2__ uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_WRITE_REQS ; 
 int /*<<< orphan*/  connect_cb_called ; 
 int /*<<< orphan*/  shutdown_cb ; 
 int /*<<< orphan*/  shutdown_req ; 
 int /*<<< orphan*/  tcp_client ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 TYPE_1__* write_reqs ; 

__attribute__((used)) static void FUNC3(uv_connect_t* req, int status) {
  write_req* w;
  int i;
  int r;

  FUNC0(req->handle == (uv_stream_t*)&tcp_client);

  for (i = 0; i < NUM_WRITE_REQS; i++) {
    w = &write_reqs[i];
    r = FUNC2(&w->req, req->handle, &w->buf, 1, write_cb);
    FUNC0(r == 0);
  }

  r = FUNC1(&shutdown_req, req->handle, shutdown_cb);
  FUNC0(r == 0);

  connect_cb_called++;
}