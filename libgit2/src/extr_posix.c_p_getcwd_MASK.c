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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

int FUNC4(char *buffer_out, size_t size)
{
	char *cwd_buffer;

	FUNC0(buffer_out && size > 0);

	cwd_buffer = FUNC1(buffer_out, size);

	if (cwd_buffer == NULL)
		return -1;

	FUNC2(buffer_out);
	FUNC3(buffer_out, size); /* append trailing slash */

	return 0;
}