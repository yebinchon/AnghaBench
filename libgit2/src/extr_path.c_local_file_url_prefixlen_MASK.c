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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *file_url)
{
	int len = -1;

	if (FUNC0(file_url, "file://") == 0) {
		if (file_url[7] == '/')
			len = 8;
		else if (FUNC0(file_url + 7, "localhost/") == 0)
			len = 17;
	}

	return len;
}