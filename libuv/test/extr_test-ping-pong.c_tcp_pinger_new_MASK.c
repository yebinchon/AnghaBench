#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_3__ tcp; } ;
struct TYPE_7__ {int vectored_writes; TYPE_1__ stream; int /*<<< orphan*/  connect_req; scalar_t__ pongs; scalar_t__ state; } ;
typedef  TYPE_2__ pinger_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  pinger_on_connect ; 
 scalar_t__ pinger_on_connect_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(int vectored_writes) {
  int r;
  struct sockaddr_in server_addr;
  pinger_t *pinger;

  FUNC0(0 == FUNC3("127.0.0.1", TEST_PORT, &server_addr));
  pinger = FUNC1(sizeof(*pinger));
  FUNC0(pinger != NULL);
  pinger->vectored_writes = vectored_writes;
  pinger->state = 0;
  pinger->pongs = 0;

  /* Try to connect to the server and do NUM_PINGS ping-pongs. */
  r = FUNC5(FUNC2(), &pinger->stream.tcp);
  pinger->stream.tcp.data = pinger;
  FUNC0(!r);

  /* We are never doing multiple reads/connects at a time anyway, so these
   * handles can be pre-initialized. */
  r = FUNC4(&pinger->connect_req,
                     &pinger->stream.tcp,
                     (const struct sockaddr*) &server_addr,
                     pinger_on_connect);
  FUNC0(!r);

  /* Synchronous connect callbacks are not allowed. */
  FUNC0(pinger_on_connect_count == 0);
}