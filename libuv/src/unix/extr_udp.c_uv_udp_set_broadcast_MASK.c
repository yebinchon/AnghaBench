#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_udp_t ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC2(uv_udp_t* handle, int on) {
  if (FUNC1(handle->io_watcher.fd,
                 SOL_SOCKET,
                 SO_BROADCAST,
                 &on,
                 sizeof(on))) {
    return FUNC0(errno);
  }

  return 0;
}