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
struct connection {int fd; int error; int state; int /*<<< orphan*/  In; scalar_t__ unread_res_bytes; } ;

/* Variables and functions */
 int C_NORD ; 
 int C_WANTRD ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct connection*,char*,int) ; 
 int FUNC4 (struct connection*) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC16 (struct connection *c) {

  char *st, *ptr, *to;
  int r, s, t = 0;

  if (verbosity > 1) {
    FUNC6 (stderr, "in client_reader(%d)\n", c->fd);
  }

  if (c->unread_res_bytes) {
    FUNC9 (c);
    t = FUNC4 (c);
  }

  to = FUNC12 (&c->In, 512);
  s = FUNC13 (&c->In);

  if (s <= 0) {
    FUNC7(&c->In);
    c->error = 8;
    to = FUNC12 (&c->In, 512);
    s = FUNC13 (&c->In);
  }

  FUNC2 (to && s > 0);

  if (!(c->state & C_NORD)) {
    r = FUNC15 (c->fd, to, s, MSG_DONTWAIT);

    if (verbosity > 0) {
      FUNC6 (stderr, "recv() from %d: %d read out of %d at %p\n", c->fd, r, s, to);
      if (r < 0 && errno != EAGAIN) FUNC14 ("recv()");
    }

  } else {
    r = 0;
  }

  if (r < s) {
    c->state |= C_NORD;
  }

  if (r > 0) {
    FUNC1 (&c->In, r);
  } else if (c->unread_res_bytes) {
    c->state |= C_WANTRD;
    return 2;
  }

  if (c->unread_res_bytes) {
    FUNC9 (c);
    FUNC4 (c);
    return 0;
  }

  do {
    ptr = st = FUNC10 (&c->In);
    s = FUNC11 (&c->In);
    if (!s) { return 0; }
    to = st + (s > 1024 ? 1024 : s);

    while (ptr < to && *ptr != 10) {
      ptr++;
    }

    if (ptr >= to) {
      if (to - st >= 1024) {
  if (verbosity > 0) {
    FUNC6 (stderr, "client socket #%d: command line longer than 1024 bytes\n", c->fd);
  }
  FUNC0 (&c->In, to - st);
  return -1;
      } else {
  r = FUNC5 (&c->In, 1024);
  return r <= s ? -1 : 0;
      }
    }

    to = ptr;
    s = to - st + 1;
    *to = 0;
    if (to > st && to[-1] == '\r') {
      *--to = 0;
    }

    r = FUNC3 (c, st, to - st);

    FUNC0 (&c->In, s);

    if (r < 0) {
      return -1;
    }

    FUNC8 (&c->In);
  } while (!r);

  return r;
}