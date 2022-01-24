#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int nwatchers; scalar_t__ nfds; int /*<<< orphan*/  watcher_queue; TYPE_2__** watchers; } ;
typedef  TYPE_1__ uv_loop_t ;
struct TYPE_6__ {int fd; unsigned int pevents; int /*<<< orphan*/  watcher_queue; scalar_t__ events; } ;
typedef  TYPE_2__ uv__io_t ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int UV__POLLPRI ; 
 unsigned int UV__POLLRDHUP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(uv_loop_t* loop, uv__io_t* w, unsigned int events) {
  FUNC4(0 == (events & ~(POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)));
  FUNC4(0 != events);

  if (w->fd == -1)
    return;

  FUNC4(w->fd >= 0);

  /* Happens when uv__io_stop() is called on a handle that was never started. */
  if ((unsigned) w->fd >= loop->nwatchers)
    return;

  w->pevents &= ~events;

  if (w->pevents == 0) {
    FUNC3(&w->watcher_queue);
    FUNC1(&w->watcher_queue);

    if (loop->watchers[w->fd] != NULL) {
      FUNC4(loop->watchers[w->fd] == w);
      FUNC4(loop->nfds > 0);
      loop->watchers[w->fd] = NULL;
      loop->nfds--;
      w->events = 0;
    }
  }
  else if (FUNC0(&w->watcher_queue))
    FUNC2(&loop->watcher_queue, &w->watcher_queue);
}