#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_long ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*) ; 
 int FUNC10 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC16(const char *hostname, int port) {
  struct addrinfo hints;
  FUNC12(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  struct addrinfo *res0;
  char *port_str = NULL;
  if (FUNC3(&port_str, "%d", port) < 0) {
    return -1;  // asprintf failed
  }
  int ret = FUNC10(hostname, port_str, &hints, &res0);
  FUNC8(port_str);
  if (ret) {
    FUNC13("Unknown host");
    return (ret < 0 ? ret : -1);
  }
  ret = -1;
  int fd = 0;
  struct addrinfo *res;
  for (res = res0; res; res = res->ai_next) {
#ifdef WIN32
    if (fd != INVALID_SOCKET) {
      closesocket(fd);
    }
    fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (fd == INVALID_SOCKET) {
      continue;
    }
    u_long nb = 1;
    if (ioctlsocket(fd, FIONBIO, &nb) ||
        (connect(fd, res->ai_addr, res->ai_addrlen) == SOCKET_ERROR &&
         WSAGetLastError() != WSAEWOULDBLOCK &&
         WSAGetLastError() != WSAEINPROGRESS)) {
      continue;
    }

    struct timeval to;
    to.tv_sec = 0;
    to.tv_usec= 500*1000;
    fd_set write_fds;
    FD_ZERO(&write_fds);
    FD_SET(fd, &write_fds);

    if (select(1, NULL, &write_fds, NULL, &to) < 1) {
      continue;
    }
#else
    if (fd > 0) {
      FUNC4(fd);
    }
    fd = FUNC15(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (fd < 0) {
      continue;
    }
    // try non-blocking connect, usually succeeds even if unreachable
    int opts = FUNC7(fd, F_GETFL);
    if (opts < 0 ||
        FUNC7(fd, F_SETFL, (opts | O_NONBLOCK)) < 0 ||
        ((FUNC6(fd, res->ai_addr, res->ai_addrlen) < 0) ==
         (errno != EINPROGRESS))) {
      continue;
    }
    // try blocking select to verify its reachable
    struct timeval to;
    to.tv_sec = 0;
    to.tv_usec= 500*1000; // arbitrary
    fd_set error_fds;
    FUNC1(&error_fds);
    FUNC0(fd, &error_fds);
    if (FUNC7(fd, F_SETFL, opts) < 0) {
      continue;
    }
    int is_error = FUNC14(fd + 1, &error_fds, NULL, NULL, &to);
    if (is_error) {
      continue;
    }
    // success!  set back to non-blocking and return
    if (FUNC7(fd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
      continue;
    }
#endif
    ret = fd;
    break;
  }
#ifdef WIN32
  if (fd != INVALID_SOCKET && ret <= 0) {
    closesocket(fd);
  }
#else
  if (fd > 0 && ret <= 0) {
    FUNC4(fd);
  }
#endif
  FUNC9(res0);
  return ret;
}