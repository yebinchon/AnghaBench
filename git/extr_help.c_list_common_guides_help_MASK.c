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
struct category_description {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAT_guide ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct category_description*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void FUNC3(void)
{
	struct category_description catdesc[] = {
		{ &CAT_guide, *FUNC0("The common Git guides are:") },
		{ 0, NULL }
	};
	FUNC1(catdesc, NULL);
	FUNC2('\n');
}