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
struct cmdline_parts {struct cmdline_parts* next_parts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cmdline_parts**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cmdline_parts**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

int FUNC6(struct cmdline_parts **parts, const char *cmdline)
{
	int ret;
	char *buf;
	char *pbuf;
	char *next;
	struct cmdline_parts **next_parts;

	*parts = NULL;

	next = pbuf = buf = FUNC2(cmdline, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	next_parts = parts;

	while (next && *pbuf) {
		next = FUNC5(pbuf, ';');
		if (next)
			*next = '\0';

		ret = FUNC3(next_parts, pbuf);
		if (ret)
			goto fail;

		if (next)
			pbuf = ++next;

		next_parts = &(*next_parts)->next_parts;
	}

	if (!*parts) {
		FUNC4("cmdline partition has no valid partition.");
		ret = -EINVAL;
		goto fail;
	}

	ret = 0;
done:
	FUNC1(buf);
	return ret;

fail:
	FUNC0(parts);
	goto done;
}