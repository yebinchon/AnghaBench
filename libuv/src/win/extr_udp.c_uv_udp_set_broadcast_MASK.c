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
struct TYPE_3__ {scalar_t__ socket; } ;
typedef  TYPE_1__ uv_udp_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int UV_EBADF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(uv_udp_t* handle, int value) {
  BOOL optval = (BOOL) value;

  if (handle->socket == INVALID_SOCKET)
    return UV_EBADF;

  if (FUNC1(handle->socket,
                 SOL_SOCKET,
                 SO_BROADCAST,
                 (char*) &optval,
                 sizeof optval)) {
    return FUNC2(FUNC0());
  }

  return 0;
}