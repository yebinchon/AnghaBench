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
struct TYPE_4__ {int /*<<< orphan*/  iProtocol; int /*<<< orphan*/  iSocketType; int /*<<< orphan*/  iAddressFamily; } ;
typedef  TYPE_1__ WSAPROTOCOL_INFOW ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  scalar_t__ SOCKET ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HANDLE_FLAG_INHERIT ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSA_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static SOCKET FUNC4(HANDLE iocp,
    WSAPROTOCOL_INFOW* protocol_info) {
  SOCKET sock = 0;

  sock = FUNC2(protocol_info->iAddressFamily,
                    protocol_info->iSocketType,
                    protocol_info->iProtocol,
                    protocol_info,
                    0,
                    WSA_FLAG_OVERLAPPED);
  if (sock == INVALID_SOCKET) {
    return INVALID_SOCKET;
  }

  if (!FUNC1((HANDLE) sock, HANDLE_FLAG_INHERIT, 0)) {
    goto error;
  };

  if (FUNC0((HANDLE) sock,
                             iocp,
                             (ULONG_PTR) sock,
                             0) == NULL) {
    goto error;
  }

  return sock;

 error:
  FUNC3(sock);
  return INVALID_SOCKET;
}