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
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*) ; 
 char* FUNC2 (char*,char**) ; 

__attribute__((used)) static int FUNC3(char *arg,
				       const char ***argv, int *nr, int *alloc,
				       struct argv_array *array)
{
	char *next = arg;

	if (!*arg)
		return 0;
	do {
		char *dequoted = FUNC2(next, &next);
		if (!dequoted)
			return -1;
		if (argv) {
			FUNC0(*argv, *nr + 1, *alloc);
			(*argv)[(*nr)++] = dequoted;
		}
		if (array)
			FUNC1(array, dequoted);
	} while (next);

	return 0;
}