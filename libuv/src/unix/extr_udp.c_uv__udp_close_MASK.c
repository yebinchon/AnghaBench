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
struct TYPE_5__ {TYPE_3__ io_watcher; int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_udp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC3(uv_udp_t* handle) {
  FUNC2(handle->loop, &handle->io_watcher);
  FUNC1(handle);

  if (handle->io_watcher.fd != -1) {
    FUNC0(handle->io_watcher.fd);
    handle->io_watcher.fd = -1;
  }
}