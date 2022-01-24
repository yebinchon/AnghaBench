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
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct rev_info const*,struct commit const*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(const struct rev_info *revs, const struct commit *commit)
{
	char *mark = FUNC1(revs, commit);
	if (!FUNC3(mark))
		return;
	FUNC0(mark, stdout);
	FUNC2(' ');
}