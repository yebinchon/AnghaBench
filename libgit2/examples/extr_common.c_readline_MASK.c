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
 int EOF ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(char **out)
{
	int c, error = 0, length = 0, allocated = 0;
	char *line = NULL;

	errno = 0;

	while ((c = FUNC1()) != EOF) {
		if (length == allocated) {
			allocated += 16;

			if ((line = FUNC2(line, allocated)) == NULL) {
				error = -1;
				goto error;
			}
		}

		if (c == '\n')
			break;

		line[length++] = c;
	}

	if (errno != 0) {
		error = -1;
		goto error;
	}

	line[length] = '\0';
	*out = line;
	line = NULL;
	error = length;
error:
	FUNC0(line);
	return error;
}