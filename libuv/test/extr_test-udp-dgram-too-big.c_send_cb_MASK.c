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
struct TYPE_4__ {scalar_t__ handle; } ;
typedef  TYPE_1__ uv_udp_send_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int UV_EMSGSIZE ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  send_cb_called ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_udp_send_t* req, int status) {
  FUNC2(req);
  FUNC1(req->handle);

  FUNC0(status == UV_EMSGSIZE);

  FUNC3((uv_handle_t*)req->handle, close_cb);
  send_cb_called++;
}