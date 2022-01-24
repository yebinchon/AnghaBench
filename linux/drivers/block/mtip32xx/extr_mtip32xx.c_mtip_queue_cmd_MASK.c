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
struct request {int /*<<< orphan*/  tag; } ;
struct driver_data {TYPE_1__* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmds_to_issue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct request *req, void *data, bool reserved)
{
	struct driver_data *dd = data;

	FUNC1(req->tag, dd->port->cmds_to_issue);
	FUNC0(req);
	return true;
}