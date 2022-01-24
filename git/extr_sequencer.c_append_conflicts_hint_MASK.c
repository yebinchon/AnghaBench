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
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;
typedef  enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;

/* Variables and functions */
 int COMMIT_MSG_CLEANUP_SCISSORS ; 
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 char comment_line_char ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

void FUNC5(struct index_state *istate,
	struct strbuf *msgbuf, enum commit_msg_cleanup_mode cleanup_mode)
{
	int i;

	if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS) {
		FUNC1(msgbuf, '\n');
		FUNC4(msgbuf);
		FUNC1(msgbuf, comment_line_char);
	}

	FUNC1(msgbuf, '\n');
	FUNC2(msgbuf, "Conflicts:\n");
	for (i = 0; i < istate->cache_nr;) {
		const struct cache_entry *ce = istate->cache[i++];
		if (FUNC0(ce)) {
			FUNC2(msgbuf, "\t%s\n", ce->name);
			while (i < istate->cache_nr &&
			       !FUNC3(ce->name, istate->cache[i]->name))
				i++;
		}
	}
}