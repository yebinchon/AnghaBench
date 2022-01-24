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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

void FUNC3(
	const char *path,
	size_t completed_steps,
	size_t total_steps,
	void *payload)
{
	FUNC0(completed_steps);
	FUNC0(total_steps);
	FUNC0(payload);

	if (path && FUNC2(path, "ident1.txt") == 0)
		FUNC1("testrepo/.gitattributes",
			"*.txt ident\n", 12, O_RDWR|O_CREAT, 0666);
}