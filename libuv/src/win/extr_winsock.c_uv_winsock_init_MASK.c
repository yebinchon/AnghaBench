#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dwServiceFlags1; } ;
typedef  TYPE_1__ WSAPROTOCOL_INFOW ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  SM_CLEANBOOT ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_PROTOCOL_INFOW ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int XP1_IFS_HANDLES ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv_addr_ip4_any_ ; 
 int /*<<< orphan*/  uv_addr_ip6_any_ ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int uv_tcp_non_ifs_lsp_ipv4 ; 
 int uv_tcp_non_ifs_lsp_ipv6 ; 

void FUNC12(void) {
  WSADATA wsa_data;
  int errorno;
  SOCKET dummy;
  WSAPROTOCOL_INFOW protocol_info;
  int opt_len;

  /* Set implicit binding address used by connectEx */
  if (FUNC10("0.0.0.0", 0, &uv_addr_ip4_any_)) {
    FUNC4();
  }

  if (FUNC11("::", 0, &uv_addr_ip6_any_)) {
    FUNC4();
  }

  /* Skip initialization in safe mode without network support */
  if (1 == FUNC0(SM_CLEANBOOT)) return;

  /* Initialize winsock */
  errorno = FUNC3(FUNC1(2, 2), &wsa_data);
  if (errorno != 0) {
    FUNC9(errorno, "WSAStartup");
  }

  /* Detect non-IFS LSPs */
  dummy = FUNC8(AF_INET, SOCK_STREAM, IPPROTO_IP);

  if (dummy != INVALID_SOCKET) {
    opt_len = (int) sizeof protocol_info;
    if (FUNC7(dummy,
                   SOL_SOCKET,
                   SO_PROTOCOL_INFOW,
                   (char*) &protocol_info,
                   &opt_len) == SOCKET_ERROR)
      FUNC9(FUNC2(), "getsockopt");

    if (!(protocol_info.dwServiceFlags1 & XP1_IFS_HANDLES))
      uv_tcp_non_ifs_lsp_ipv4 = 1;

    if (FUNC5(dummy) == SOCKET_ERROR)
      FUNC9(FUNC2(), "closesocket");

  } else if (!FUNC6(FUNC2())) {
    /* Any error other than "socket type not supported" is fatal. */
    FUNC9(FUNC2(), "socket");
  }

  /* Detect IPV6 support and non-IFS LSPs */
  dummy = FUNC8(AF_INET6, SOCK_STREAM, IPPROTO_IP);

  if (dummy != INVALID_SOCKET) {
    opt_len = (int) sizeof protocol_info;
    if (FUNC7(dummy,
                   SOL_SOCKET,
                   SO_PROTOCOL_INFOW,
                   (char*) &protocol_info,
                   &opt_len) == SOCKET_ERROR)
      FUNC9(FUNC2(), "getsockopt");

    if (!(protocol_info.dwServiceFlags1 & XP1_IFS_HANDLES))
      uv_tcp_non_ifs_lsp_ipv6 = 1;

    if (FUNC5(dummy) == SOCKET_ERROR)
      FUNC9(FUNC2(), "closesocket");

  } else if (!FUNC6(FUNC2())) {
    /* Any error other than "socket type not supported" is fatal. */
    FUNC9(FUNC2(), "socket");
  }
}