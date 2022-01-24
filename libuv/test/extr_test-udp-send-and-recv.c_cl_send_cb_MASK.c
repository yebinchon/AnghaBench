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
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ uv_udp_send_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  cl_recv_cb ; 
 int /*<<< orphan*/  cl_send_cb_called ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uv_udp_send_t* req, int status) {
  int r;

  FUNC0(req != NULL);
  FUNC0(status == 0);
  FUNC1(req->handle);

  r = FUNC2(req->handle, alloc_cb, cl_recv_cb);
  FUNC0(r == 0);

  cl_send_cb_called++;
}