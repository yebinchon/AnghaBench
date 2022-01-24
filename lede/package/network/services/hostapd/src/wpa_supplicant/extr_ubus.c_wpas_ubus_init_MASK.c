#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {TYPE_1__ sock; int /*<<< orphan*/  connection_lost; } ;

/* Variables and functions */
 TYPE_2__* ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubus_receive ; 
 int /*<<< orphan*/  wpas_ubus_connection_lost ; 

__attribute__((used)) static bool FUNC2(void)
{
	if (ctx)
		return true;

	ctx = FUNC1(NULL);
	if (!ctx)
		return false;

	ctx->connection_lost = wpas_ubus_connection_lost;
	FUNC0(ctx->sock.fd, ubus_receive, ctx, NULL);
	return true;
}