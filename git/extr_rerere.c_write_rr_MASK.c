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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct rerere_id {scalar_t__ variant; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; struct rerere_id* util; } ;

/* Variables and functions */
 struct rerere_id* RERERE_RESOLVED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rerere_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_lock ; 

__attribute__((used)) static int FUNC8(struct string_list *rr, int out_fd)
{
	int i;
	for (i = 0; i < rr->nr; i++) {
		struct strbuf buf = STRBUF_INIT;
		struct rerere_id *id;

		FUNC1(rr->items[i].util != RERERE_RESOLVED);

		id = rr->items[i].util;
		if (!id)
			continue;
		FUNC1(id->variant >= 0);
		if (0 < id->variant)
			FUNC5(&buf, "%s.%d\t%s%c",
				    FUNC4(id), id->variant,
				    rr->items[i].string, 0);
		else
			FUNC5(&buf, "%s\t%s%c",
				    FUNC4(id),
				    rr->items[i].string, 0);

		if (FUNC7(out_fd, buf.buf, buf.len) < 0)
			FUNC3(FUNC0("unable to write rerere record"));

		FUNC6(&buf);
	}
	if (FUNC2(&write_lock) != 0)
		FUNC3(FUNC0("unable to write rerere record"));
	return 0;
}