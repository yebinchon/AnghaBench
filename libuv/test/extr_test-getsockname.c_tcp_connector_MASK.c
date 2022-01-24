#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ connect_port ; 
 int /*<<< orphan*/  connect_req ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_connect ; 
 int /*<<< orphan*/  server_port ; 
 TYPE_1__ tcp ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct sockaddr*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(void) {
  struct sockaddr_in server_addr;
  struct sockaddr sockname;
  int r, namelen;

  FUNC0(0 == FUNC2("127.0.0.1", server_port, &server_addr));

  r = FUNC5(loop, &tcp);
  tcp.data = &connect_req;
  FUNC0(!r);

  r = FUNC3(&connect_req,
                     &tcp,
                     (const struct sockaddr*) &server_addr,
                     on_connect);
  FUNC0(!r);

  /* Fetch the actual port used by the connecting socket. */
  namelen = sizeof sockname;
  r = FUNC4(&tcp, &sockname, &namelen);
  FUNC0(!r);
  FUNC0(sockname.sa_family == AF_INET);
  connect_port = FUNC1(((struct sockaddr_in*) &sockname)->sin_port);
  FUNC0(connect_port > 0);
}