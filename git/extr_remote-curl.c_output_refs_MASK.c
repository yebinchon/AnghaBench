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
struct ref {char* symref; char* name; int /*<<< orphan*/  old_oid; struct ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(struct ref *refs)
{
	struct ref *posn;
	for (posn = refs; posn; posn = posn->next) {
		if (posn->symref)
			FUNC2("@%s %s\n", posn->symref, posn->name);
		else
			FUNC2("%s %s\n", FUNC1(&posn->old_oid), posn->name);
	}
	FUNC2("\n");
	FUNC0(stdout);
}