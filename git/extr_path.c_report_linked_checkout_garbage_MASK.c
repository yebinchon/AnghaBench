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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct common_dir {char* path; scalar_t__ ignore_garbage; } ;
struct TYPE_2__ {int /*<<< orphan*/  different_commondir; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKDIR_FILE_GARBAGE ; 
 struct strbuf STRBUF_INIT ; 
 struct common_dir* common_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int) ; 
 TYPE_1__* the_repository ; 

void FUNC7(void)
{
	struct strbuf sb = STRBUF_INIT;
	const struct common_dir *p;
	int len;

	if (!the_repository->different_commondir)
		return;
	FUNC3(&sb, "%s/", FUNC1());
	len = sb.len;
	for (p = common_list; p->path; p++) {
		const char *path = p->path;
		if (p->ignore_garbage)
			continue;
		FUNC6(&sb, len);
		FUNC4(&sb, path);
		if (FUNC0(sb.buf))
			FUNC2(PACKDIR_FILE_GARBAGE, sb.buf);
	}
	FUNC5(&sb);
}