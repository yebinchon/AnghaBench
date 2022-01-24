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
struct transport {TYPE_1__* server_options; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct transport *transport)
{
	if (!transport->server_options || !transport->server_options->nr)
		return;
	FUNC1(FUNC0("see protocol.version in 'git help config' for more details"));
	FUNC2(FUNC0("server options require protocol version 2 or later"));
}