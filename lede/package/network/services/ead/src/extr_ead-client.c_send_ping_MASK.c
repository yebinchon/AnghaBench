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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAD_TYPE_PING ; 
 int /*<<< orphan*/  EAD_TYPE_PONG ; 
 int /*<<< orphan*/  handle_pong ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* msg ; 
 int nid ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(void)
{
	msg->type = FUNC0(EAD_TYPE_PING);
	msg->len = 0;
	return FUNC1(EAD_TYPE_PONG, handle_pong, (nid == 0xffff ? 0 : 1));
}