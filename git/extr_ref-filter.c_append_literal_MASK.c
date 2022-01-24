#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_formatting_state {TYPE_1__* stack; } ;
struct TYPE_2__ {struct strbuf output; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const) ; 

__attribute__((used)) static void FUNC2(const char *cp, const char *ep, struct ref_formatting_state *state)
{
	struct strbuf *s = &state->stack->output;

	while (*cp && (!ep || cp < ep)) {
		if (*cp == '%') {
			if (cp[1] == '%')
				cp++;
			else {
				int ch = FUNC0(cp + 1);
				if (0 <= ch) {
					FUNC1(s, ch);
					cp += 3;
					continue;
				}
			}
		}
		FUNC1(s, *cp);
		cp++;
	}
}