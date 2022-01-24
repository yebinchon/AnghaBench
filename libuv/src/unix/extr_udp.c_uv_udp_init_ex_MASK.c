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
struct TYPE_3__ {int /*<<< orphan*/  write_completed_queue; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  io_watcher; scalar_t__ send_queue_count; scalar_t__ send_queue_size; int /*<<< orphan*/ * recv_cb; int /*<<< orphan*/ * alloc_cb; } ;
typedef  TYPE_1__ uv_udp_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  UV_UDP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv__udp_io ; 

int FUNC4(uv_loop_t* loop, uv_udp_t* handle, unsigned int flags) {
  int domain;
  int err;
  int fd;

  /* Use the lower 8 bits for the domain */
  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  if (domain != AF_UNSPEC) {
    err = FUNC3(domain, SOCK_DGRAM, 0);
    if (err < 0)
      return err;
    fd = err;
  } else {
    fd = -1;
  }

  FUNC1(loop, (uv_handle_t*)handle, UV_UDP);
  handle->alloc_cb = NULL;
  handle->recv_cb = NULL;
  handle->send_queue_size = 0;
  handle->send_queue_count = 0;
  FUNC2(&handle->io_watcher, uv__udp_io, fd);
  FUNC0(&handle->write_queue);
  FUNC0(&handle->write_completed_queue);

  return 0;
}