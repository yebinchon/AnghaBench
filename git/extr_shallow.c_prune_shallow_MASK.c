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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 unsigned int PRUNE_QUICK ; 
 unsigned int PRUNE_SHOW_ONLY ; 
 unsigned int QUICK ; 
 unsigned int SEEN_ONLY ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lock_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

void FUNC11(unsigned options)
{
	struct lock_file shallow_lock = LOCK_INIT;
	struct strbuf sb = STRBUF_INIT;
	unsigned flags = SEEN_ONLY;
	int fd;

	if (options & PRUNE_QUICK)
		flags |= QUICK;

	if (options & PRUNE_SHOW_ONLY) {
		flags |= VERBOSE;
		FUNC10(&sb, 0, NULL, flags);
		FUNC7(&sb);
		return;
	}
	fd = FUNC5(&shallow_lock,
				       FUNC4(the_repository),
				       LOCK_DIE_ON_ERROR);
	FUNC0(the_repository);
	if (FUNC10(&sb, 0, NULL, flags)) {
		if (FUNC9(fd, sb.buf, sb.len) < 0)
			FUNC2("failed to write to %s",
				  FUNC3(&shallow_lock));
		FUNC1(&shallow_lock);
	} else {
		FUNC8(FUNC4(the_repository));
		FUNC6(&shallow_lock);
	}
	FUNC7(&sb);
}