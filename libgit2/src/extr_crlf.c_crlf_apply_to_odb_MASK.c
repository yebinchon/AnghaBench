#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crlf_attrs {scalar_t__ crlf_action; } ;
typedef  int /*<<< orphan*/  git_filter_source ;
struct TYPE_4__ {int /*<<< orphan*/  crlf; } ;
typedef  TYPE_1__ git_buf_text_stats ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ GIT_CRLF_AUTO ; 
 scalar_t__ GIT_CRLF_AUTO_CRLF ; 
 scalar_t__ GIT_CRLF_AUTO_INPUT ; 
 scalar_t__ GIT_CRLF_BINARY ; 
 int GIT_PASSTHROUGH ; 
 int FUNC0 (struct crlf_attrs*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(
	struct crlf_attrs *ca,
	git_buf *to,
	const git_buf *from,
	const git_filter_source *src)
{
	git_buf_text_stats stats;
	bool is_binary;
	int error;

	/* Binary attribute? Empty file? Nothing to do */
	if (ca->crlf_action == GIT_CRLF_BINARY || !FUNC1(from))
		return GIT_PASSTHROUGH;

	is_binary = FUNC3(&stats, from, false);

	/* Heuristics to see if we can skip the conversion.
	 * Straight from Core Git.
	 */
	if (ca->crlf_action == GIT_CRLF_AUTO ||
		ca->crlf_action == GIT_CRLF_AUTO_INPUT ||
		ca->crlf_action == GIT_CRLF_AUTO_CRLF) {

		if (is_binary)
			return GIT_PASSTHROUGH;

		/*
		 * If the file in the index has any CR in it, do not convert.
		 * This is the new safer autocrlf handling.
		 */
		if (FUNC4(src))
			return GIT_PASSTHROUGH;
	}

	if ((error = FUNC0(ca, src, &stats)) < 0)
		return error;

	/* If there are no CR characters to filter out, then just pass */
	if (!stats.crlf)
		return GIT_PASSTHROUGH;

	/* Actually drop the carriage returns */
	return FUNC2(to, from);
}