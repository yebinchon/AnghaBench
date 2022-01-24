#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nfds; TYPE_2__** watchers; int /*<<< orphan*/  watcher_queue; } ;
typedef  TYPE_1__ uv_loop_t ;
struct TYPE_7__ {int fd; unsigned int pevents; unsigned int events; int /*<<< orphan*/  watcher_queue; } ;
typedef  TYPE_2__ uv__io_t ;

/* Variables and functions */
 int INT_MAX ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int UV__POLLPRI ; 
 unsigned int UV__POLLRDHUP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(uv_loop_t* loop, uv__io_t* w, unsigned int events) {
  FUNC2(0 == (events & ~(POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)));
  FUNC2(0 != events);
  FUNC2(w->fd >= 0);
  FUNC2(w->fd < INT_MAX);

  w->pevents |= events;
  FUNC3(loop, w->fd + 1);

#if !defined(__sun)
  /* The event ports backend needs to rearm all file descriptors on each and
   * every tick of the event loop but the other backends allow us to
   * short-circuit here if the event mask is unchanged.
   */
  if (w->events == w->pevents)
    return;
#endif

  if (FUNC0(&w->watcher_queue))
    FUNC1(&loop->watcher_queue, &w->watcher_queue);

  if (loop->watchers[w->fd] == NULL) {
    loop->watchers[w->fd] = w;
    loop->nfds++;
  }
}