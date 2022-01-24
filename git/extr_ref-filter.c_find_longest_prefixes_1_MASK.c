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
struct string_list {int dummy; } ;
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct string_list *out,
				  struct strbuf *prefix,
				  const char **patterns, size_t nr)
{
	size_t i;

	for (i = 0; i < nr; i++) {
		char c = patterns[i][prefix->len];
		if (!c || FUNC0(c)) {
			FUNC3(out, prefix->buf);
			return;
		}
	}

	i = 0;
	while (i < nr) {
		size_t end;

		/*
		* Set "end" to the index of the element _after_ the last one
		* in our group.
		*/
		for (end = i + 1; end < nr; end++) {
			if (patterns[i][prefix->len] != patterns[end][prefix->len])
				break;
		}

		FUNC1(prefix, patterns[i][prefix->len]);
		FUNC4(out, prefix, patterns + i, end - i);
		FUNC2(prefix, prefix->len - 1);

		i = end;
	}
}