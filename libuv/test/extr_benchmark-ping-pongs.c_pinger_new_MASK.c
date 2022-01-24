#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {TYPE_2__ tcp; int /*<<< orphan*/  connect_req; scalar_t__ pongs; scalar_t__ state; } ;
typedef  TYPE_1__ pinger_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  loop ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  pinger_connect_cb ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void) {
  struct sockaddr_in client_addr;
  struct sockaddr_in server_addr;
  pinger_t *pinger;
  int r;

  FUNC0(0 == FUNC2("0.0.0.0", 0, &client_addr));
  FUNC0(0 == FUNC2("127.0.0.1", TEST_PORT, &server_addr));
  pinger = FUNC1(sizeof(*pinger));
  pinger->state = 0;
  pinger->pongs = 0;

  /* Try to connect to the server and do NUM_PINGS ping-pongs. */
  r = FUNC5(loop, &pinger->tcp);
  FUNC0(!r);

  pinger->tcp.data = pinger;

  FUNC0(0 == FUNC3(&pinger->tcp,
                          (const struct sockaddr*) &client_addr,
                          0));

  r = FUNC4(&pinger->connect_req,
                     &pinger->tcp,
                     (const struct sockaddr*) &server_addr,
                     pinger_connect_cb);
  FUNC0(!r);
}