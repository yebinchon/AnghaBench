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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int FUNC6 (char const*) ; 

const char *FUNC7(const char *in, const char *prefix,
			  struct strbuf *sb)
{
	int in_len = in ? FUNC6(in) : 0;
	int prefix_len = prefix ? FUNC6(prefix) : 0;
	int in_off = 0;
	int prefix_off = 0;
	int i = 0, j = 0;

	if (!in_len)
		return "./";
	else if (!prefix_len)
		return in;

	if (FUNC1(in, prefix))
		/* bypass dos_drive, for "c:" is identical to "C:" */
		i = j = FUNC0(in);
	else {
		return in;
	}

	while (i < prefix_len && j < in_len && prefix[i] == in[j]) {
		if (FUNC2(prefix[i])) {
			while (FUNC2(prefix[i]))
				i++;
			while (FUNC2(in[j]))
				j++;
			prefix_off = i;
			in_off = j;
		} else {
			i++;
			j++;
		}
	}

	if (
	    /* "prefix" seems like prefix of "in" */
	    i >= prefix_len &&
	    /*
	     * but "/foo" is not a prefix of "/foobar"
	     * (i.e. prefix not end with '/')
	     */
	    prefix_off < prefix_len) {
		if (j >= in_len) {
			/* in="/a/b", prefix="/a/b" */
			in_off = in_len;
		} else if (FUNC2(in[j])) {
			/* in="/a/b/c", prefix="/a/b" */
			while (FUNC2(in[j]))
				j++;
			in_off = j;
		} else {
			/* in="/a/bbb/c", prefix="/a/b" */
			i = prefix_off;
		}
	} else if (
		   /* "in" is short than "prefix" */
		   j >= in_len &&
		   /* "in" not end with '/' */
		   in_off < in_len) {
		if (FUNC2(prefix[i])) {
			/* in="/a/b", prefix="/a/b/c/" */
			while (FUNC2(prefix[i]))
				i++;
			in_off = in_len;
		}
	}
	in += in_off;
	in_len -= in_off;

	if (i >= prefix_len) {
		if (!in_len)
			return "./";
		else
			return in;
	}

	FUNC5(sb);
	FUNC4(sb, in_len);

	while (i < prefix_len) {
		if (FUNC2(prefix[i])) {
			FUNC3(sb, "../");
			while (FUNC2(prefix[i]))
				i++;
			continue;
		}
		i++;
	}
	if (!FUNC2(prefix[prefix_len - 1]))
		FUNC3(sb, "../");

	FUNC3(sb, in);

	return sb->buf;
}