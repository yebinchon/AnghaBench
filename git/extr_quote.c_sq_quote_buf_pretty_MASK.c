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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const) ; 

void FUNC5(struct strbuf *dst, const char *src)
{
	static const char ok_punct[] = "+,-./:=@_^";
	const char *p;

	/* Avoid losing a zero-length string by adding '' */
	if (!*src) {
		FUNC3(dst, "''");
		return;
	}

	for (p = src; *p; p++) {
		if (!FUNC0(*p) && !FUNC1(*p) && !FUNC4(ok_punct, *p)) {
			FUNC2(dst, src);
			return;
		}
	}

	/* if we get here, we did not need quoting */
	FUNC3(dst, src);
}