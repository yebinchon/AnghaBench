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
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct string_list *needs_pushing)
{
	int i;

	FUNC2(stderr, "%s", FUNC0("The following submodule paths contain changes that can\n"
			"not be found on any remote:\n"));
	for (i = 0; i < needs_pushing->nr; i++)
		FUNC2(stderr, "  %s\n", needs_pushing->items[i].string);
	FUNC2(stderr, "%s", FUNC0("\nPlease try\n\n"
			  "	git push --recurse-submodules=on-demand\n\n"
			  "or cd to the path and use\n\n"
			  "	git push\n\n"
			  "to push them to a remote.\n\n"));

	FUNC3(needs_pushing, 0);

	FUNC1(FUNC0("Aborting."));
}