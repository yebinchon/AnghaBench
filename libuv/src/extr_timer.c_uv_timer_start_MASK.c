#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  heap_node; TYPE_7__* loop; scalar_t__ start_id; scalar_t__ repeat; scalar_t__ timeout; int /*<<< orphan*/ * timer_cb; } ;
typedef  TYPE_1__ uv_timer_t ;
typedef  int /*<<< orphan*/ * uv_timer_cb ;
typedef  scalar_t__ uint64_t ;
struct heap_node {int dummy; } ;
struct TYPE_9__ {scalar_t__ time; int /*<<< orphan*/  timer_counter; } ;

/* Variables and functions */
 int UV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct heap_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  timer_less_than ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(uv_timer_t* handle,
                   uv_timer_cb cb,
                   uint64_t timeout,
                   uint64_t repeat) {
  uint64_t clamped_timeout;

  if (FUNC4(handle) || cb == NULL)
    return UV_EINVAL;

  if (FUNC3(handle))
    FUNC5(handle);

  clamped_timeout = handle->loop->time + timeout;
  if (clamped_timeout < timeout)
    clamped_timeout = (uint64_t) -1;

  handle->timer_cb = cb;
  handle->timeout = clamped_timeout;
  handle->repeat = repeat;
  /* start_id is the second index to be compared in uv__timer_cmp() */
  handle->start_id = handle->loop->timer_counter++;

  FUNC0(FUNC1(handle->loop),
              (struct heap_node*) &handle->heap_node,
              timer_less_than);
  FUNC2(handle);

  return 0;
}