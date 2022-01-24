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
 int MODE_EXTRACT ; 
 int file_mode ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int) ; 

__attribute__((used)) static int
FUNC2(FILE **file, const char *name, int mode)
{
	if (file_mode < 0)
		file_mode = mode;
	else if (file_mode != mode) {
		FUNC0("Error: mixing appending and extracting data is not supported\n");
		return 1;
	}

	if (*file) {
		FUNC0("Error: the same append/extract option cannot be used multiple times\n");
		return 1;
	}

	*file = FUNC1(name, mode == MODE_EXTRACT);
	return !*file;
}