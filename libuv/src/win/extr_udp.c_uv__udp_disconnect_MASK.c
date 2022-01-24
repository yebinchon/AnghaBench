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
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ uv_udp_t ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  UV_HANDLE_UDP_CONNECTED ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 

int FUNC3(uv_udp_t* handle) {
    int err;
    struct sockaddr addr;

    FUNC1(&addr, 0, sizeof(addr));

    err = FUNC0(handle->socket, &addr, sizeof(addr));
    if (err)
      return FUNC2(err);

    handle->flags &= ~UV_HANDLE_UDP_CONNECTED;
    return 0;
}