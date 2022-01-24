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
struct strbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct strbuf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 

void FUNC3(struct strbuf *sb, const char *prefix, const char *path, int nodq)
{
	if (FUNC0(prefix, NULL, NULL, 0) ||
	    FUNC0(path, NULL, NULL, 0)) {
		if (!nodq)
			FUNC1(sb, '"');
		FUNC0(prefix, sb, NULL, 1);
		FUNC0(path, sb, NULL, 1);
		if (!nodq)
			FUNC1(sb, '"');
	} else {
		FUNC2(sb, prefix);
		FUNC2(sb, path);
	}
}