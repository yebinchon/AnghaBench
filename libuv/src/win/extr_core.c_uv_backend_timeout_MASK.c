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
struct TYPE_6__ {scalar_t__ stop_flag; scalar_t__ idle_handles; scalar_t__ endgame_handles; scalar_t__ pending_reqs_tail; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const uv_loop_t* loop) {
  if (loop->stop_flag != 0)
    return 0;

  if (!FUNC0(loop) && !FUNC1(loop))
    return 0;

  if (loop->pending_reqs_tail)
    return 0;

  if (loop->endgame_handles)
    return 0;

  if (loop->idle_handles)
    return 0;

  return FUNC2(loop);
}