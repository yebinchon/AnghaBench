#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int async_wfd; TYPE_3__ async_io_watcher; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC2(uv_loop_t* loop) {
  if (loop->async_io_watcher.fd == -1)
    return;

  if (loop->async_wfd != -1) {
    if (loop->async_wfd != loop->async_io_watcher.fd)
      FUNC0(loop->async_wfd);
    loop->async_wfd = -1;
  }

  FUNC1(loop, &loop->async_io_watcher, POLLIN);
  FUNC0(loop->async_io_watcher.fd);
  loop->async_io_watcher.fd = -1;
}