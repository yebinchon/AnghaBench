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
struct TYPE_4__ {int fd; int /*<<< orphan*/  pending_queue; } ;
typedef  TYPE_1__ uv__io_t ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UV__POLLPRI ; 
 int UV__POLLRDHUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(uv_loop_t* loop, uv__io_t* w) {
  FUNC1(loop, w, POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI);
  FUNC0(&w->pending_queue);

  /* Remove stale events for this file descriptor */
  if (w->fd != -1)
    FUNC2(loop, w->fd);
}