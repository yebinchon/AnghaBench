#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ header_list; scalar_t__ use_reflog_filter; int /*<<< orphan*/  pattern_list; } ;
struct rev_info {scalar_t__ invert_grep; TYPE_2__ grep_filter; scalar_t__ show_notes; int /*<<< orphan*/  mailmap; int /*<<< orphan*/  reflog_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct strbuf*,char const*,int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,char*,scalar_t__) ; 
 char* FUNC5 (struct commit*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct commit*,char const*) ; 

__attribute__((used)) static int FUNC11(struct commit *commit, struct rev_info *opt)
{
	int retval;
	const char *encoding;
	const char *message;
	struct strbuf buf = STRBUF_INIT;

	if (!opt->grep_filter.pattern_list && !opt->grep_filter.header_list)
		return 1;

	/* Prepend "fake" headers as needed */
	if (opt->grep_filter.use_reflog_filter) {
		FUNC7(&buf, "reflog ");
		FUNC3(&buf, opt->reflog_info);
		FUNC6(&buf, '\n');
	}

	/*
	 * We grep in the user's output encoding, under the assumption that it
	 * is the encoding they are most likely to write their grep pattern
	 * for. In addition, it means we will match the "notes" encoding below,
	 * so we will not end up with a buffer that has two different encodings
	 * in it.
	 */
	encoding = FUNC2();
	message = FUNC5(commit, NULL, encoding);

	/* Copy the commit to temporary if we are using "fake" headers */
	if (buf.len)
		FUNC7(&buf, message);

	if (opt->grep_filter.header_list && opt->mailmap) {
		if (!buf.len)
			FUNC7(&buf, message);

		FUNC0(&buf, "\nauthor ", opt->mailmap);
		FUNC0(&buf, "\ncommitter ", opt->mailmap);
	}

	/* Append "fake" message parts as needed */
	if (opt->show_notes) {
		if (!buf.len)
			FUNC7(&buf, message);
		FUNC1(&commit->object.oid, &buf, encoding, 1);
	}

	/*
	 * Find either in the original commit message, or in the temporary.
	 * Note that we cast away the constness of "message" here. It is
	 * const because it may come from the cached commit buffer. That's OK,
	 * because we know that it is modifiable heap memory, and that while
	 * grep_buffer may modify it for speed, it will restore any
	 * changes before returning.
	 */
	if (buf.len)
		retval = FUNC4(&opt->grep_filter, buf.buf, buf.len);
	else
		retval = FUNC4(&opt->grep_filter,
				     (char *)message, FUNC9(message));
	FUNC8(&buf);
	FUNC10(commit, message);
	return opt->invert_grep ? !retval : retval;
}