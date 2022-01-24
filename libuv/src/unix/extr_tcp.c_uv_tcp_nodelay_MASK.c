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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ uv_tcp_t ;

/* Variables and functions */
 int /*<<< orphan*/  UV_HANDLE_TCP_NODELAY ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 

int FUNC2(uv_tcp_t* handle, int on) {
  int err;

  if (FUNC0(handle) != -1) {
    err = FUNC1(FUNC0(handle), on);
    if (err)
      return err;
  }

  if (on)
    handle->flags |= UV_HANDLE_TCP_NODELAY;
  else
    handle->flags &= ~UV_HANDLE_TCP_NODELAY;

  return 0;
}