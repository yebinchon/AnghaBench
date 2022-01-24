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
struct TYPE_5__ {int fd; scalar_t__ in_queue; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 TYPE_1__* Events ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4 (int fd) {
  event_t *ev;
  FUNC0 (fd >= 0 && fd < MAX_EVENTS);
  ev = Events + fd;
  if (ev->fd != fd) {
    return -1;
  }
  FUNC1 (fd);
  if (ev->in_queue) {
    FUNC3 (ev, 0);
  }
  FUNC2 (ev, 0, sizeof (event_t));
  ev->fd = -1;
  return 0;
}