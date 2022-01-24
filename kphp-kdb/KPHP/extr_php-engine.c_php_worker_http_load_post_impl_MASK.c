#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int events; int /*<<< orphan*/  fd; } ;
struct connection {scalar_t__ basic_type; int /*<<< orphan*/  fd; int /*<<< orphan*/  In; int /*<<< orphan*/  crypto; scalar_t__ error; } ;
struct TYPE_3__ {double finish_time; struct connection* conn; } ;
typedef  TYPE_1__ php_worker ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EWOULDBLOCK ; 
 int POLLIN ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ct_pipe ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 () ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

int FUNC6 (php_worker *worker, char *buf, int min_len, int max_len) {
  FUNC0 (worker != NULL);

  struct connection *c = worker->conn;
  double precise_now = FUNC2();

//  fprintf (stderr, "Trying to load data of len [%d;%d] at %.6lf\n", min_len, max_len, precise_now - worker->start_time);

  if (worker->finish_time < precise_now + 0.01) {
    return -1;
  }

  if (c == NULL || c->error) {
    return -1;
  }

  FUNC0 (!c->crypto);
  FUNC0 (c->basic_type != ct_pipe);
  FUNC0 (min_len <= max_len);

  int read = 0;
  int have_bytes = FUNC1 (&c->In);
  if (have_bytes > 0) {
    if (have_bytes > max_len) {
      have_bytes = max_len;
    }
    FUNC0 (FUNC4 (&c->In, buf, have_bytes) == have_bytes);
    read += have_bytes;
  }

  struct pollfd poll_fds;
  poll_fds.fd = c->fd;
  poll_fds.events = POLLIN | POLLPRI;

  while (read < min_len) {
    precise_now = FUNC2();

    double left_time = worker->finish_time - precise_now;
    FUNC0 (left_time < 2000000.0);

    if (left_time < 0.01) {
      return -1;
    }

    int r = FUNC3 (&poll_fds, 1, (int)(left_time * 1000 + 1));
    int err = errno;
    if (r > 0) {
      FUNC0 (r == 1);

      r = FUNC5 (c->fd, buf + read, max_len - read, 0);
      err = errno;
/*
      if (r < 0) {
        fprintf (stderr, "Error recv: %m\n");
      } else {
        fprintf (stderr, "Received %d bytes at %.6lf\n", r, precise_now - worker->start_time);
      }
*/
      if (r > 0) {
        read += r;
      } else {
        if (r == 0) {
          return -1;
        }

        if (err != EAGAIN && err != EWOULDBLOCK && err != EINTR) {
          return -1;
        }
      }
    } else {
      if (r == 0) {
        return -1;
      }

//      fprintf (stderr, "Error poll: %m\n");
      if (err != EINTR) {
        return -1;
      }
    }
  }

//  fprintf (stderr, "%d bytes loaded\n", read);
  return read;
}