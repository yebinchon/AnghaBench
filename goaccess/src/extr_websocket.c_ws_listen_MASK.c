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
typedef  int /*<<< orphan*/  WSServer ;
struct TYPE_2__ {int /*<<< orphan*/  wfds; int /*<<< orphan*/  rfds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__ fdstate ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (int listener, int conn, WSServer * server)
{
  /* handle new connections */
  if (FUNC0 (conn, &fdstate.rfds) && conn == listener)
    FUNC1 (listener, server);
  /* handle data from a client */
  else if (FUNC0 (conn, &fdstate.rfds) && conn != listener)
    FUNC2 (conn, server);
  /* handle sending data to a client */
  else if (FUNC0 (conn, &fdstate.wfds) && conn != listener)
    FUNC3 (conn, server);
}