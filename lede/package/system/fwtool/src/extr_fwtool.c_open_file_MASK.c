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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static FILE *
FUNC2(const char *name, bool write)
{
	FILE *ret;

	if (!FUNC1(name, "-"))
		return write ? stdout : stdin;

	ret = FUNC0(name, write ? "w" : "r+");
	if (!ret && !write)
		ret = FUNC0(name, "r");

	return ret;
}