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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  getsocknamecount ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  server_port ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  udpServer ; 
 int /*<<< orphan*/  udp_recv ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void) {
  struct sockaddr_in addr;
  struct sockaddr sockname;
  int namelen;
  int r;

  FUNC0(0 == FUNC4("0.0.0.0", server_port, &addr));

  r = FUNC7(loop, &udpServer);
  if (r) {
    FUNC2(stderr, "Socket creation error\n");
    return 1;
  }

  r = FUNC5(&udpServer, (const struct sockaddr*) &addr, 0);
  if (r) {
    FUNC2(stderr, "Bind error\n");
    return 1;
  }

  FUNC3(&sockname, -1, sizeof sockname);
  namelen = sizeof sockname;
  r = FUNC6(&udpServer, &sockname, &namelen);
  FUNC0(r == 0);
  FUNC1(&sockname, "0.0.0.0", server_port, "udp listener socket");
  getsocknamecount++;

  r = FUNC8(&udpServer, alloc, udp_recv);
  FUNC0(r == 0);

  return 0;
}