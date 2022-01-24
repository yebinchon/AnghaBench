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
 char* FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *value)
{
	const char *p = value;

	while ((p = FUNC0(p, "\r\n")) != NULL) {
		/* we really expect only one new line */
		p += FUNC1(p, "\r\n");
		/* we expect a space or tab for continuation */
		if (*p != ' ' && *p != '\t')
			return (0);
	}
	return (1);
}