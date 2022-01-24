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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_ENOTCONN ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  getpeernamecount ; 
 int /*<<< orphan*/  getsocknamecount ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  on_connection ; 
 int /*<<< orphan*/  server_port ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tcpServer ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void) {
  struct sockaddr_in addr;
  struct sockaddr sockname, peername;
  int namelen;
  int r;

  FUNC0(0 == FUNC4("0.0.0.0", server_port, &addr));

  r = FUNC9(loop, &tcpServer);
  if (r) {
    FUNC2(stderr, "Socket creation error\n");
    return 1;
  }

  r = FUNC6(&tcpServer, (const struct sockaddr*) &addr, 0);
  if (r) {
    FUNC2(stderr, "Bind error\n");
    return 1;
  }

  r = FUNC5((uv_stream_t*)&tcpServer, 128, on_connection);
  if (r) {
    FUNC2(stderr, "Listen error\n");
    return 1;
  }

  FUNC3(&sockname, -1, sizeof sockname);
  namelen = sizeof sockname;
  r = FUNC8(&tcpServer, &sockname, &namelen);
  FUNC0(r == 0);
  FUNC1(&sockname, "0.0.0.0", server_port, "server socket");
  getsocknamecount++;

  namelen = sizeof sockname;
  r = FUNC7(&tcpServer, &peername, &namelen);
  FUNC0(r == UV_ENOTCONN);
  getpeernamecount++;

  return 0;
}