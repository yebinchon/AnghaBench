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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_connection ; 
 int /*<<< orphan*/ * server ; 
 int /*<<< orphan*/  serverType ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tcpServer ; 
 scalar_t__ FUNC2 (char*,int,struct sockaddr_in6*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int port) {
  struct sockaddr_in6 addr6;
  int r;

  FUNC0(0 == FUNC2("::1", port, &addr6));

  server = (uv_handle_t*)&tcpServer;
  serverType = TCP;

  r = FUNC5(loop, &tcpServer);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Socket creation error\n");
    return 1;
  }

  /* IPv6 is optional as not all platforms support it */
  r = FUNC4(&tcpServer, (const struct sockaddr*) &addr6, 0);
  if (r) {
    /* show message but return OK */
    FUNC1(stderr, "IPv6 not supported\n");
    return 0;
  }

  r = FUNC3((uv_stream_t*)&tcpServer, SOMAXCONN, on_connection);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Listen error\n");
    return 1;
  }

  return 0;
}