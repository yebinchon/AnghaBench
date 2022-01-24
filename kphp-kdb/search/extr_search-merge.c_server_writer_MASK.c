#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connection {int state; int fd; int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int C_NOWR ; 
 int C_WANTWR ; 
 int EVT_WRITE ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC7 (struct connection *c) {
  int r, s, t = 0;
  char *to;

  while ((c->state & C_WANTWR) != 0) {
    // write buffer loop
    s = FUNC4 (&c->Out);

    if (!s) {
      c->state &= ~C_WANTWR;
      break;
    }

    if (c->state & C_NOWR) {
      break;
    }

    to = FUNC3 (&c->Out);

    r = FUNC6 (c->fd, to, s, MSG_DONTWAIT | MSG_NOSIGNAL);

    if (verbosity > 0) {
      FUNC1 (stderr, "send() to %d: %d written out of %d at %p\n", c->fd, r, s, to);
      if (r < 0) FUNC5 ("send()");
    }

    if (r > 0) {
      FUNC0 (&c->Out, r);
      t += r;
    }

    if (r < s) {
      c->state |= C_NOWR;
    }

  }

  if (t) {
    FUNC2 (&c->Out);
  }

  return c->state & C_WANTWR ? EVT_WRITE : 0;
}