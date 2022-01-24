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
 size_t FUNC0 (char const*) ; 
 size_t FUNC1 (char const*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static char *FUNC5(const char *message, size_t* len)
{
	size_t patch_start = FUNC0(message);
	size_t trailer_end = FUNC1(message, patch_start);
	size_t trailer_start = FUNC2(message, trailer_end);

	size_t trailer_len = trailer_end - trailer_start;

	char *buffer = FUNC3(trailer_len + 1);
	if (buffer == NULL)
		return NULL;

	FUNC4(buffer, message + trailer_start, trailer_len);
	buffer[trailer_len] = 0;

	*len = trailer_len;

	return buffer;
}