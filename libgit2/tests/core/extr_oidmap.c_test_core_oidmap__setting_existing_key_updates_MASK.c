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
struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_oid oids[] = {
	    {{ 0x01 }},
	    {{ 0x02 }},
	    {{ 0x03 }}
	};

	FUNC2(FUNC4(g_map, &oids[0], "one"));
	FUNC2(FUNC4(g_map, &oids[1], "two"));
	FUNC2(FUNC4(g_map, &oids[2], "three"));
	FUNC0(FUNC5(g_map), 3);

	FUNC2(FUNC4(g_map, &oids[1], "other"));
	FUNC0(FUNC5(g_map), 3);

	FUNC1(FUNC3(g_map, &oids[1]), "other");
}