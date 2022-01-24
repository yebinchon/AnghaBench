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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char** order ; 
 int order_cnt ; 
 void* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(const char *orderfile)
{
	int cnt, pass;
	struct strbuf sb = STRBUF_INIT;
	void *map;
	char *cp, *endp;
	ssize_t sz;

	if (order)
		return;

	sz = FUNC4(&sb, orderfile, 0);
	if (sz < 0)
		FUNC2(FUNC1("failed to read orderfile '%s'"), orderfile);
	map = FUNC3(&sb, NULL);
	endp = (char *) map + sz;

	for (pass = 0; pass < 2; pass++) {
		cnt = 0;
		cp = map;
		while (cp < endp) {
			char *ep;
			for (ep = cp; ep < endp && *ep != '\n'; ep++)
				;
			/* cp to ep has one line */
			if (*cp == '\n' || *cp == '#')
				; /* comment */
			else if (pass == 0)
				cnt++;
			else {
				if (*ep == '\n') {
					*ep = 0;
					order[cnt] = cp;
				} else {
					order[cnt] = FUNC5(cp, ep - cp);
				}
				cnt++;
			}
			if (ep < endp)
				ep++;
			cp = ep;
		}
		if (pass == 0) {
			order_cnt = cnt;
			FUNC0(order, cnt);
		}
	}
}