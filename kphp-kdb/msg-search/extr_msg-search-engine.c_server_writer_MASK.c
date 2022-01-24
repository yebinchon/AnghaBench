#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int fd; scalar_t__ state; int /*<<< orphan*/  Out; TYPE_1__* ev; } ;
struct TYPE_2__ {int state; int ready; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 int EVT_WRITE ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (struct connection *c) {
  int r, s, fd = c->fd;
  event_t *ev = c->ev;

  if (c->state > 0) {
    // write buffer loop
    s = FUNC3 (&c->Out);

    while ((s = FUNC3 (&c->Out)) && (!(ev->state & EVT_WRITE) || (ev->ready & EVT_WRITE))) {
      char *to = FUNC2 (&c->Out);

      r = FUNC5 (fd, to, s, MSG_DONTWAIT);

      if (verbosity > 0) {
	FUNC1 (stderr, "send() to %d: %d written out of %d at %p\n", fd, r, s, to);
	if (r < 0) FUNC4 ("send()");
      }

      if (r > 0) {
	FUNC0 (&c->Out, r);
      }

      if (r < s) {
	ev->ready &= ~EVT_WRITE;
	break;
      }
    }

    if (s > 0) return EVT_WRITE;
      
    c->state = 0;
  }
  return 0;
}