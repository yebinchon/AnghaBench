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
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (char const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const**) ; 

__attribute__((used)) static inline char *FUNC2(const char **buf, size_t *lenp)
{
	char *dup;
	size_t len;

	len = FUNC1(buf);
	dup = FUNC0(*buf, len + 1, GFP_KERNEL);
	if (!dup)
		return NULL;
	*(dup + len) = '\0';
	*buf += len;

	if (lenp)
		*lenp = len;

	return dup;
}