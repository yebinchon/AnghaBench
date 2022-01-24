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
struct TYPE_4__ {scalar_t__ write_queue_size; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_5__ {TYPE_1__* handle; } ;
typedef  TYPE_2__ uv_shutdown_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shutdown_cb_called ; 
 int /*<<< orphan*/  tcp_client ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_reqs ; 

__attribute__((used)) static void FUNC3(uv_shutdown_t* req, int status) {
  FUNC0(req->handle == (uv_stream_t*)&tcp_client);
  FUNC0(req->handle->write_queue_size == 0);

  FUNC2((uv_handle_t*)req->handle, close_cb);
  FUNC1(write_reqs);

  shutdown_cb_called++;
}