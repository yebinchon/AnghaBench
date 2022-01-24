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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC4(const char *filename)
{
	FILE *fp_file;
	long result;

	fp_file = FUNC1(filename, "r");
	if (!fp_file)
		return -1;
	FUNC2(fp_file, 0, SEEK_END);
	result = FUNC3(fp_file);
	FUNC0(fp_file);
	return result;
}