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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_connection ; 
 int /*<<< orphan*/ * server ; 
 int /*<<< orphan*/  serverType ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tcpServer ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int,struct sockaddr_in*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(int port) {
  struct sockaddr_in addr;
  int r;

  FUNC0(0 == FUNC3("0.0.0.0", port, &addr));

  server = (uv_handle_t*)&tcpServer;
  serverType = TCP;

  r = FUNC6(loop, &tcpServer);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Socket creation error\n");
    return 1;
  }

  r = FUNC5(&tcpServer, (const struct sockaddr*) &addr, 0);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Bind error\n");
    return 1;
  }

  r = FUNC4((uv_stream_t*)&tcpServer, SOMAXCONN, on_connection);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Listen error %s\n", FUNC2(r));
    return 1;
  }

  return 0;
}