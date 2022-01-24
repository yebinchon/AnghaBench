#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_4__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  connect_cb_called ; 
 TYPE_1__ connect_req ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  shutdown_cb ; 
 int /*<<< orphan*/  shutdown_req ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC5(uv_connect_t* req, int status) {
  uv_buf_t buf = FUNC1("PING", 4);
  uv_stream_t* stream;
  int r;

  FUNC0(req == &connect_req);
  FUNC0(status == 0);

  stream = req->handle;
  connect_cb_called++;

  r = FUNC4(&write_req, stream, &buf, 1, write_cb);
  FUNC0(r == 0);

  /* Shutdown on drain. */
  r = FUNC3(&shutdown_req, stream, shutdown_cb);
  FUNC0(r == 0);

  /* Start reading */
  r = FUNC2(stream, alloc_cb, read_cb);
  FUNC0(r == 0);
}