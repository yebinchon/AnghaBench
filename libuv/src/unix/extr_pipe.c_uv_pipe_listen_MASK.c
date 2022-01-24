#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cb; } ;
struct TYPE_5__ {TYPE_4__ io_watcher; int /*<<< orphan*/  loop; int /*<<< orphan*/  connection_cb; } ;
typedef  TYPE_1__ uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_connection_cb ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int SOMAXCONN ; 
 int UV_EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv__server_io ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(uv_pipe_t* handle, int backlog, uv_connection_cb cb) {
  if (FUNC3(handle) == -1)
    return UV_EINVAL;

#if defined(__MVS__)
  /* On zOS, backlog=0 has undefined behaviour */
  if (backlog == 0)
    backlog = 1;
  else if (backlog < 0)
    backlog = SOMAXCONN;
#endif

  if (FUNC1(FUNC3(handle), backlog))
    return FUNC0(errno);

  handle->connection_cb = cb;
  handle->io_watcher.cb = uv__server_io;
  FUNC2(handle->loop, &handle->io_watcher, POLLIN);
  return 0;
}