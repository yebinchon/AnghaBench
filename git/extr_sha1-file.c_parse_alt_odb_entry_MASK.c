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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,char const**) ; 

__attribute__((used)) static const char *FUNC4(const char *string,
				       int sep,
				       struct strbuf *out)
{
	const char *end;

	FUNC1(out);

	if (*string == '#') {
		/* comment; consume up to next separator */
		end = FUNC2(string, sep);
	} else if (*string == '"' && !FUNC3(out, string, &end)) {
		/*
		 * quoted path; unquote_c_style has copied the
		 * data for us and set "end". Broken quoting (e.g.,
		 * an entry that doesn't end with a quote) falls
		 * back to the unquoted case below.
		 */
	} else {
		/* normal, unquoted path */
		end = FUNC2(string, sep);
		FUNC0(out, string, end - string);
	}

	if (*end)
		end++;
	return end;
}