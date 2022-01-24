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
struct string_list_item {int /*<<< orphan*/ * string; int /*<<< orphan*/ * util; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 

void FUNC7(struct string_list_item *item, const char *prefix,
			const char *pattern)
{
	struct strbuf normalized_pattern = STRBUF_INIT;

	if (*pattern == '/')
		FUNC0("pattern must not start with '/'");

	if (prefix) {
		FUNC3(&normalized_pattern, prefix);
	}
	else if (!FUNC2(pattern, "refs/"))
		FUNC3(&normalized_pattern, "refs/");
	FUNC3(&normalized_pattern, pattern);
	FUNC6(&normalized_pattern, "/");

	item->string = FUNC4(&normalized_pattern, NULL);
	item->util = FUNC1(pattern) ? NULL : item->string;
	FUNC5(&normalized_pattern);
}