#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int nwatchers; int /*<<< orphan*/  watcher_queue; TYPE_2__** watchers; } ;
typedef  TYPE_1__ uv_loop_t ;
struct TYPE_8__ {scalar_t__ pevents; int /*<<< orphan*/  watcher_queue; scalar_t__ events; } ;
typedef  TYPE_2__ uv__io_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(uv_loop_t* loop) {
  int err;
  unsigned int i;
  uv__io_t* w;

  err = FUNC3(loop);
  if (err)
    return err;

  err = FUNC2(loop);
  if (err)
    return err;

  err = FUNC4(loop);
  if (err)
    return err;

  /* Rearm all the watchers that aren't re-queued by the above. */
  for (i = 0; i < loop->nwatchers; i++) {
    w = loop->watchers[i];
    if (w == NULL)
      continue;

    if (w->pevents != 0 && FUNC0(&w->watcher_queue)) {
      w->events = 0; /* Force re-registration in uv__io_poll. */
      FUNC1(&loop->watcher_queue, &w->watcher_queue);
    }
  }

  return 0;
}