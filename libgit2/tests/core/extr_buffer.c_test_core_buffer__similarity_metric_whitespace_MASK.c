#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_hashsig_option_t ;
typedef  int /*<<< orphan*/  git_hashsig ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 scalar_t__ GIT_HASHSIG_NORMAL ; 
 scalar_t__ GIT_HASHSIG_SMART_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_hashsig *a, *b;
	git_buf buf = GIT_BUF_INIT;
	int sim, i, j;
	git_hashsig_option_t opt;
	const char *tabbed =
		"	for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\n"
		"		separator = sep[s];\n"
		"		expect = expect_values[s];\n"
		"\n"
		"		for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\n"
		"			for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\n"
		"				git_buf_join(&buf, separator, a[i], b[j]);\n"
		"				cl_assert_equal_s(*expect, buf.ptr);\n"
		"				expect++;\n"
		"			}\n"
		"		}\n"
		"	}\n";
	const char *spaced =
		"   for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\n"
		"       separator = sep[s];\n"
		"       expect = expect_values[s];\n"
		"\n"
		"       for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\n"
		"           for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\n"
		"               git_buf_join(&buf, separator, a[i], b[j]);\n"
		"               cl_assert_equal_s(*expect, buf.ptr);\n"
		"               expect++;\n"
		"           }\n"
		"       }\n"
		"   }\n";
	const char *crlf_spaced2 =
		"  for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\r\n"
		"    separator = sep[s];\r\n"
		"    expect = expect_values[s];\r\n"
		"\r\n"
		"    for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\r\n"
		"      for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\r\n"
		"        git_buf_join(&buf, separator, a[i], b[j]);\r\n"
		"        cl_assert_equal_s(*expect, buf.ptr);\r\n"
		"        expect++;\r\n"
		"      }\r\n"
		"    }\r\n"
		"  }\r\n";
	const char *text[3] = { tabbed, spaced, crlf_spaced2 };

	/* let's try variations of our own code with whitespace changes */

	for (opt = GIT_HASHSIG_NORMAL; opt <= GIT_HASHSIG_SMART_WHITESPACE; ++opt) {
		for (i = 0; i < 3; ++i) {
			for (j = 0; j < 3; ++j) {
				FUNC2(FUNC4(&buf, text[i]));
				FUNC2(FUNC6(&a, buf.ptr, buf.size, opt));

				FUNC2(FUNC4(&buf, text[j]));
				FUNC2(FUNC6(&b, buf.ptr, buf.size, opt));

				sim = FUNC5(a, b);

				if (opt == GIT_HASHSIG_NORMAL) {
					if (i == j)
						FUNC0(100, sim);
					else
						FUNC1(0, sim, 30); /* pretty different */
				} else {
					FUNC0(100, sim);
				}

				FUNC7(a);
				FUNC7(b);
			}
		}
	}

	FUNC3(&buf);
}