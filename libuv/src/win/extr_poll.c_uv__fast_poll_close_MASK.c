#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ submitted_events_1; scalar_t__ submitted_events_2; scalar_t__ events; } ;
typedef  TYPE_1__ uv_poll_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(uv_loop_t* loop, uv_poll_t* handle) {
  handle->events = 0;
  FUNC1(handle);

  if (handle->submitted_events_1 == 0 &&
      handle->submitted_events_2 == 0) {
    FUNC2(loop, (uv_handle_t*) handle);
    return 0;
  } else {
    /* Cancel outstanding poll requests by executing another, unique poll
     * request that forces the outstanding ones to return. */
    return FUNC0(loop, handle);
  }
}