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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct stat*) ; 

bool FUNC3(const char *filename)
{
	struct stat st1, st2;

	FUNC0(FUNC2(filename, &st1));
	FUNC0(FUNC1(filename, st1.st_mode ^ 0100));
	FUNC0(FUNC2(filename, &st2));

	return (st1.st_mode != st2.st_mode);
}