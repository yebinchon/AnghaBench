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
struct object {int /*<<< orphan*/  oid; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_commit_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct object *obj)
{
	FUNC0(stderr, "Cannot obtain needed %s %s\n",
		obj->type ? FUNC3(obj->type): "object",
		FUNC2(&obj->oid));
	if (!FUNC1(&current_commit_oid))
		FUNC0(stderr, "while processing commit %s.\n",
			FUNC2(&current_commit_oid));
}