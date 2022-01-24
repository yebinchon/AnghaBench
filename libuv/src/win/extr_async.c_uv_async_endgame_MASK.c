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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  async_sent; } ;
typedef  TYPE_1__ uv_async_t ;

/* Variables and functions */
 int UV_HANDLE_CLOSED ; 
 int UV_HANDLE_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(uv_loop_t* loop, uv_async_t* handle) {
  if (handle->flags & UV_HANDLE_CLOSING &&
      !handle->async_sent) {
    FUNC0(!(handle->flags & UV_HANDLE_CLOSED));
    FUNC1(handle);
  }
}