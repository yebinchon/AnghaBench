#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_ECONNREFUSED ; 
 scalar_t__ close_cb_calls ; 
 int /*<<< orphan*/  connect_cb_calls ; 
 int /*<<< orphan*/  on_close ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_connect_t *req, int status) {
  FUNC0((uv_stream_t*) &tcp == req->handle);
  FUNC0(status == UV_ECONNREFUSED);
  connect_cb_calls++;

  FUNC0(close_cb_calls == 0);
  FUNC1((uv_handle_t*)req->handle, on_close);
}