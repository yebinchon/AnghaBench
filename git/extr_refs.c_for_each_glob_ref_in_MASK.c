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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_filter {char const* prefix; void* cb_data; int /*<<< orphan*/  fn; int /*<<< orphan*/  pattern; } ;
typedef  int /*<<< orphan*/  each_ref_fn ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  filter_refs ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ref_filter*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

int FUNC7(each_ref_fn fn, const char *pattern,
	const char *prefix, void *cb_data)
{
	struct strbuf real_pattern = STRBUF_INIT;
	struct ref_filter filter;
	int ret;

	if (!prefix && !FUNC2(pattern, "refs/"))
		FUNC4(&real_pattern, "refs/");
	else if (prefix)
		FUNC4(&real_pattern, prefix);
	FUNC4(&real_pattern, pattern);

	if (!FUNC1(pattern)) {
		/* Append implied '/' '*' if not present. */
		FUNC5(&real_pattern, '/');
		/* No need to check for '*', there is none. */
		FUNC3(&real_pattern, '*');
	}

	filter.pattern = real_pattern.buf;
	filter.prefix = prefix;
	filter.fn = fn;
	filter.cb_data = cb_data;
	ret = FUNC0(filter_refs, &filter);

	FUNC6(&real_pattern);
	return ret;
}