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
 int FUNC0 (char const*,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *name, const char *a, const char *b)
{
	const char *old_name = a;
	const char *new_name = b;
	int pfx_length, sfx_length;
	int pfx_adjust_for_slash;
	int len_a = FUNC5(a);
	int len_b = FUNC5(b);
	int a_midlen, b_midlen;
	int qlen_a = FUNC0(a, NULL, NULL, 0);
	int qlen_b = FUNC0(b, NULL, NULL, 0);

	if (qlen_a || qlen_b) {
		FUNC0(a, name, NULL, 0);
		FUNC3(name, " => ");
		FUNC0(b, name, NULL, 0);
		return;
	}

	/* Find common prefix */
	pfx_length = 0;
	while (*old_name && *new_name && *old_name == *new_name) {
		if (*old_name == '/')
			pfx_length = old_name - a + 1;
		old_name++;
		new_name++;
	}

	/* Find common suffix */
	old_name = a + len_a;
	new_name = b + len_b;
	sfx_length = 0;
	/*
	 * If there is a common prefix, it must end in a slash.  In
	 * that case we let this loop run 1 into the prefix to see the
	 * same slash.
	 *
	 * If there is no common prefix, we cannot do this as it would
	 * underrun the input strings.
	 */
	pfx_adjust_for_slash = (pfx_length ? 1 : 0);
	while (a + pfx_length - pfx_adjust_for_slash <= old_name &&
	       b + pfx_length - pfx_adjust_for_slash <= new_name &&
	       *old_name == *new_name) {
		if (*old_name == '/')
			sfx_length = len_a - (old_name - a);
		old_name--;
		new_name--;
	}

	/*
	 * pfx{mid-a => mid-b}sfx
	 * {pfx-a => pfx-b}sfx
	 * pfx{sfx-a => sfx-b}
	 * name-a => name-b
	 */
	a_midlen = len_a - pfx_length - sfx_length;
	b_midlen = len_b - pfx_length - sfx_length;
	if (a_midlen < 0)
		a_midlen = 0;
	if (b_midlen < 0)
		b_midlen = 0;

	FUNC4(name, pfx_length + a_midlen + b_midlen + sfx_length + 7);
	if (pfx_length + sfx_length) {
		FUNC1(name, a, pfx_length);
		FUNC2(name, '{');
	}
	FUNC1(name, a + pfx_length, a_midlen);
	FUNC3(name, " => ");
	FUNC1(name, b + pfx_length, b_midlen);
	if (pfx_length + sfx_length) {
		FUNC2(name, '}');
		FUNC1(name, a + len_a - sfx_length, sfx_length);
	}
}