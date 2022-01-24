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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 size_t FUNC5 (char const*,char*,size_t) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *from, const char *to, size_t link_size)
{
	int error = 0;
	ssize_t read_len;
	char *link_data;
	size_t alloc_size;

	FUNC1(&alloc_size, link_size, 1);
	link_data = FUNC3(alloc_size);
	FUNC0(link_data);

	read_len = FUNC5(from, link_data, link_size);
	if (read_len != (ssize_t)link_size) {
		FUNC4(GIT_ERROR_OS, "failed to read symlink data for '%s'", from);
		error = -1;
	}
	else {
		link_data[read_len] = '\0';

		if (FUNC6(link_data, to) < 0) {
			FUNC4(GIT_ERROR_OS, "could not symlink '%s' as '%s'",
				link_data, to);
			error = -1;
		}
	}

	FUNC2(link_data);
	return error;
}