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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 

__attribute__((used)) static void FUNC3(char *files[])
{
	char *filename;
	size_t i;

	FUNC2(files);

	for (i = 0, filename = files[i]; filename; filename = files[++i])
		FUNC0(FUNC1(repo_index, filename));
}