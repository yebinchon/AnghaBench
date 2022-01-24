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
struct TYPE_6__ {scalar_t__ stop_flag; scalar_t__ closing_handles; int /*<<< orphan*/  pending_queue; int /*<<< orphan*/  idle_handles; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__ const*) ; 

int FUNC4(const uv_loop_t* loop) {
  if (loop->stop_flag != 0)
    return 0;

  if (!FUNC1(loop) && !FUNC2(loop))
    return 0;

  if (!FUNC0(&loop->idle_handles))
    return 0;

  if (!FUNC0(&loop->pending_queue))
    return 0;

  if (loop->closing_handles)
    return 0;

  return FUNC3(loop);
}