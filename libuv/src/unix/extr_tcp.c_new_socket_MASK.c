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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  saddr ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 unsigned long UV_HANDLE_BOUND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,unsigned long) ; 

__attribute__((used)) static int FUNC8(uv_tcp_t* handle, int domain, unsigned long flags) {
  struct sockaddr_storage saddr;
  socklen_t slen;
  int sockfd;
  int err;

  err = FUNC5(domain, SOCK_STREAM, 0);
  if (err < 0)
    return err;
  sockfd = err;

  err = FUNC7((uv_stream_t*) handle, sockfd, flags);
  if (err) {
    FUNC4(sockfd);
    return err;
  }

  if (flags & UV_HANDLE_BOUND) {
    /* Bind this new socket to an arbitrary port */
    slen = sizeof(saddr);
    FUNC3(&saddr, 0, sizeof(saddr));
    if (FUNC2(FUNC6(handle), (struct sockaddr*) &saddr, &slen)) {
      FUNC4(sockfd);
      return FUNC0(errno);
    }

    if (FUNC1(FUNC6(handle), (struct sockaddr*) &saddr, slen)) {
      FUNC4(sockfd);
      return FUNC0(errno);
    }
  }

  return 0;
}