#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int flags; int events; int submitted_events_1; int submitted_events_2; int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_poll_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int UV_DISCONNECT ; 
 int UV_HANDLE_CLOSING ; 
 scalar_t__ UV_POLL ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(uv_loop_t* loop, uv_poll_t* handle, int events) {
  FUNC0(handle->type == UV_POLL);
  FUNC0(!(handle->flags & UV_HANDLE_CLOSING));
  FUNC0((events & ~(UV_READABLE | UV_WRITABLE | UV_DISCONNECT)) == 0);

  handle->events = events;

  if (handle->events != 0) {
    FUNC2(handle);
  } else {
    FUNC3(handle);
  }

  if ((handle->events & ~(handle->submitted_events_1 |
      handle->submitted_events_2)) != 0) {
    FUNC1(handle->loop, handle);
  }

  return 0;
}