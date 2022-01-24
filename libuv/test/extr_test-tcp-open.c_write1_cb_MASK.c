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
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ uv_write_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int shutdown_cb_called ; 
 scalar_t__ shutdown_requested ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void (*) (TYPE_1__*,int)) ; 
 int /*<<< orphan*/  write_cb_called ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC3(uv_write_t* req, int status) {
  uv_buf_t buf;
  int r;

  FUNC0(req != NULL);
  if (status) {
    FUNC0(shutdown_cb_called);
    return;
  }

  if (shutdown_requested)
    return;

  buf = FUNC1("P", 1);
  r = FUNC2(&write_req, req->handle, &buf, 1, write1_cb);
  FUNC0(r == 0);

  write_cb_called++;
}