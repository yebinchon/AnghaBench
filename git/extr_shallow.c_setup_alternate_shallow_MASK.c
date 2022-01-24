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
struct oid_array {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lock_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ ,struct oid_array const*) ; 

void FUNC8(struct lock_file *shallow_lock,
			     const char **alternate_shallow_file,
			     const struct oid_array *extra)
{
	struct strbuf sb = STRBUF_INIT;
	int fd;

	fd = FUNC4(shallow_lock,
				       FUNC3(the_repository),
				       LOCK_DIE_ON_ERROR);
	FUNC0(the_repository);
	if (FUNC7(&sb, 0, extra)) {
		if (FUNC6(fd, sb.buf, sb.len) < 0)
			FUNC1("failed to write to %s",
				  FUNC2(shallow_lock));
		*alternate_shallow_file = FUNC2(shallow_lock);
	} else
		/*
		 * is_repository_shallow() sees empty string as "no
		 * shallow file".
		 */
		*alternate_shallow_file = "";
	FUNC5(&sb);
}