#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {struct TYPE_17__* msg; struct TYPE_17__* committer; int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  oid_old; } ;
typedef  TYPE_1__ git_reflog_entry ;
struct TYPE_18__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_reflog ;
struct TYPE_19__ {char* line; size_t line_len; scalar_t__ remain_len; } ;
typedef  TYPE_3__ git_parse_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_3__ GIT_PARSE_CTX_INIT ; 
 void* FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char const*,size_t) ; 
 scalar_t__ FUNC8 (char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,char const**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(git_reflog *log, const char *buf, size_t buf_size)
{
	git_parse_ctx parser = GIT_PARSE_CTX_INIT;

	if ((FUNC7(&parser, buf, buf_size)) < 0)
		return -1;

	for (; parser.remain_len; FUNC5(&parser)) {
		git_reflog_entry *entry;
		const char *sig;
		char c;

		entry = FUNC1(1, sizeof(*entry));
		FUNC0(entry);
		entry->committer = FUNC1(1, sizeof(*entry->committer));
		FUNC0(entry->committer);

		if (FUNC6(&entry->oid_old, &parser) < 0 ||
		    FUNC4(&parser, " ", 1) < 0 ||
		    FUNC6(&entry->oid_cur, &parser) < 0)
			goto next;

		sig = parser.line;
		while (FUNC8(&c, &parser, 0) == 0 && c != '\t' && c != '\n')
			FUNC3(&parser, 1);

		if (FUNC10(entry->committer, &sig, parser.line, NULL, 0) < 0)
			goto next;

		if (c == '\t') {
			size_t len;
			FUNC3(&parser, 1);

			len = parser.line_len;
			if (parser.line[len - 1] == '\n')
				len--;

			entry->msg = FUNC2(parser.line, len);
			FUNC0(entry->msg);
		}

		if ((FUNC11(&log->entries, entry)) < 0) {
			FUNC9(entry);
			return -1;
		}

		continue;

next:
		FUNC9(entry);
	}

	return 0;
}