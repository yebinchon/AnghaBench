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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	struct stat st;

	if (!FUNC4())
		FUNC1();

	FUNC2("stat_nonexistent", "stat_dangling_dir", 1);

	FUNC0(FUNC3("stat_nonexistent_dir", &st));
	FUNC0(FUNC3("stat_dangling", &st));
}