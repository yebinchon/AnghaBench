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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITMODULES_FILE ; 
 int /*<<< orphan*/  GITMODULES_HEAD ; 
 int /*<<< orphan*/  GITMODULES_INDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 

int FUNC2(void)
{
	struct object_id oid;
	return FUNC0(GITMODULES_FILE) ||
		(FUNC1(GITMODULES_INDEX, &oid) < 0 && FUNC1(GITMODULES_HEAD, &oid) < 0);
}