#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ git_regmatch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  regex ; 

void FUNC4(void)
{
	git_regmatch matches[3];

	FUNC1(FUNC2(&regex, "(a*)(b*)c", 0));
	FUNC1(FUNC3(&regex, "ac", 3, matches));
	FUNC0(matches[0].start, 0);
	FUNC0(matches[0].end, 2);
	FUNC0(matches[1].start, 0);
	FUNC0(matches[1].end, 1);
	FUNC0(matches[2].start, 1);
	FUNC0(matches[2].end, 1);
}