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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct pollfd {int fd; int revents; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLIN ; 
 int POLLNVAL ; 
 int UV_EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct pollfd*,int,int /*<<< orphan*/ ) ; 

int FUNC2(uv_loop_t* loop, int fd) {
  struct pollfd p[1];
  int rv;

  p[0].fd = fd;
  p[0].events = POLLIN;

  do
    rv = FUNC1(p, 1, 0);
  while (rv == -1 && (errno == EINTR || errno == EAGAIN));

  if (rv == -1)
    return FUNC0(errno);

  if (p[0].revents & POLLNVAL)
    return UV_EINVAL;

  return 0;
}