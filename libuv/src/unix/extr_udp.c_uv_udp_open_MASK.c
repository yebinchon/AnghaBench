#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; TYPE_1__ io_watcher; int /*<<< orphan*/  loop; } ;
typedef  TYPE_2__ uv_udp_t ;
typedef  int uv_os_sock_t ;

/* Variables and functions */
 int UV_EBUSY ; 
 int UV_EEXIST ; 
 int /*<<< orphan*/  UV_HANDLE_UDP_CONNECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

int FUNC4(uv_udp_t* handle, uv_os_sock_t sock) {
  int err;

  /* Check for already active socket. */
  if (handle->io_watcher.fd != -1)
    return UV_EBUSY;

  if (FUNC0(handle->loop, sock))
    return UV_EEXIST;

  err = FUNC1(sock, 1);
  if (err)
    return err;

  err = FUNC2(sock);
  if (err)
    return err;

  handle->io_watcher.fd = sock;
  if (FUNC3(handle))
    handle->flags |= UV_HANDLE_UDP_CONNECTED;

  return 0;
}