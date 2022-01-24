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
struct TYPE_5__ {int /*<<< orphan*/  io_watcher; int /*<<< orphan*/  loop; int /*<<< orphan*/ * recv_cb; int /*<<< orphan*/ * alloc_cb; } ;
typedef  TYPE_1__ uv_udp_t ;
typedef  int /*<<< orphan*/ * uv_udp_recv_cb ;
typedef  int /*<<< orphan*/ * uv_alloc_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  POLLIN ; 
 int UV_EALREADY ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(uv_udp_t* handle,
                       uv_alloc_cb alloc_cb,
                       uv_udp_recv_cb recv_cb) {
  int err;

  if (alloc_cb == NULL || recv_cb == NULL)
    return UV_EINVAL;

  if (FUNC1(&handle->io_watcher, POLLIN))
    return UV_EALREADY;  /* FIXME(bnoordhuis) Should be UV_EBUSY. */

  err = FUNC3(handle, AF_INET, 0);
  if (err)
    return err;

  handle->alloc_cb = alloc_cb;
  handle->recv_cb = recv_cb;

  FUNC2(handle->loop, &handle->io_watcher, POLLIN);
  FUNC0(handle);

  return 0;
}