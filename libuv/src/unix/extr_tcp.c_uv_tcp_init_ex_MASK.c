#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  handle_queue; } ;
typedef  TYPE_1__ uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  UV_TCP ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(uv_loop_t* loop, uv_tcp_t* tcp, unsigned int flags) {
  int domain;

  /* Use the lower 8 bits for the domain */
  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  FUNC2(loop, (uv_stream_t*)tcp, UV_TCP);

  /* If anything fails beyond this point we need to remove the handle from
   * the handle queue, since it was added by uv__handle_init in uv_stream_init.
   */

  if (domain != AF_UNSPEC) {
    int err = FUNC1(tcp, domain, 0);
    if (err) {
      FUNC0(&tcp->handle_queue);
      return err;
    }
  }

  return 0;
}