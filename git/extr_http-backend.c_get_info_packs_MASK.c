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
struct packed_git {scalar_t__ pack_name; scalar_t__ pack_local; struct packed_git* next; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct packed_git* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC10(struct strbuf *hdr, char *arg)
{
	size_t objdirlen = FUNC9(FUNC1());
	struct strbuf buf = STRBUF_INIT;
	struct packed_git *p;
	size_t cnt = 0;

	FUNC3(hdr);
	for (p = FUNC0(the_repository); p; p = p->next) {
		if (p->pack_local)
			cnt++;
	}

	FUNC7(&buf, cnt * 53 + 2);
	for (p = FUNC0(the_repository); p; p = p->next) {
		if (p->pack_local)
			FUNC6(&buf, "P %s\n", p->pack_name + objdirlen + 6);
	}
	FUNC5(&buf, '\n');

	FUNC2(hdr);
	FUNC4(hdr, "text/plain; charset=utf-8", &buf);
	FUNC8(&buf);
}