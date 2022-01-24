#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ git_config_entries ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(git_config_entries **out)
{
	git_config_entries *entries;
	int error;

	entries = FUNC2(1, sizeof(git_config_entries));
	FUNC0(entries);
	FUNC1(entries);

	if ((error = FUNC4(&entries->map)) < 0)
		FUNC3(entries);
	else
		*out = entries;

	return error;
}