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
struct strbuf {char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESERVED_NON_WS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,char const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static int FUNC3(
	struct strbuf *sub_spec, struct strbuf *errbuf)
{
	const char *c = sub_spec->buf;
	while (*c) {
		if (*c <= ' ' || FUNC2(RESERVED_NON_WS, *c)) {
			FUNC1(
				errbuf,
				FUNC0("must escape char in sub-filter-spec: '%c'"),
				*c);
			return 1;
		}
		c++;
	}

	return 0;
}