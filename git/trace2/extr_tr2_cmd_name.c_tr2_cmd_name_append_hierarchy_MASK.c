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
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TR2_ENVVAR_PARENT_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__ tr2cmdname_hierarchy ; 

void FUNC5(const char *name)
{
	const char *parent_name = FUNC0(TR2_ENVVAR_PARENT_NAME);

	FUNC4(&tr2cmdname_hierarchy);
	if (parent_name && *parent_name) {
		FUNC3(&tr2cmdname_hierarchy, parent_name);
		FUNC2(&tr2cmdname_hierarchy, '/');
	}
	FUNC3(&tr2cmdname_hierarchy, name);

	FUNC1(TR2_ENVVAR_PARENT_NAME, tr2cmdname_hierarchy.buf, 1);
}