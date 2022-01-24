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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(const char *url)
{
	/* Is "scheme" part reasonable? */
	if (!url || !FUNC0(1, *url++))
		return 0;
	while (*url && *url != ':') {
		if (!FUNC0(0, *url++))
			return 0;
	}
	/* We've seen "scheme"; we want colon-slash-slash */
	return (url[0] == ':' && url[1] == '/' && url[2] == '/');
}