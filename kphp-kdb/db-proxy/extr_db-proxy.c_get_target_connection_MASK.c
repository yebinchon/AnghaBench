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
struct connection {int fd; int remote_port; int status; int unreliability; int /*<<< orphan*/  remote_ip; struct connection* next; } ;
struct conn_target {double next_reconnect_timeout; struct connection* first_conn; } ;

/* Variables and functions */
 int cr_busy ; 
 int cr_notyet ; 
 int cr_ok ; 
 int cr_stopped ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct connection*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_target*,struct connection*) ; 
 scalar_t__ round_robin ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

struct connection *FUNC4 (struct conn_target *S) {
  struct connection *c, *d = 0;
  int r, pr = cr_notyet, u = 10000;
  if (!S) {
    return 0;
  }
  for (c = S->first_conn; c != (struct connection *) S; c = c->next) {
    r = FUNC3 (c);
    if (verbosity > 1) {
      FUNC0 (stderr, "checked connection %p (%d %s:%d): ready status = %d (connect status %d)\n", c, c->fd, FUNC2 (c->remote_ip), c->remote_port, r, c->status);
    }
    if (r == cr_ok) {
      if (round_robin) {
        FUNC1 (S, c);
      }
      return c;
    } else
    if (r == cr_busy) {
      u = -(1 << 30);
      d = c;
      pr = r;
    } else if (r == cr_stopped && c->unreliability < u) {
      u = c->unreliability;
      d = c;
      pr = r;
    }
  }

  if (S->next_reconnect_timeout > 5.0 && (pr == cr_notyet || pr == cr_busy)) {
    return 0;
  }

  /* all connections failed? */
  return d;
}