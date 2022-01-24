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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int output_format; int /*<<< orphan*/  file; int /*<<< orphan*/  output_prefix_data; struct strbuf* (* output_prefix ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct rev_info {scalar_t__ commit_format; TYPE_1__ diffopt; scalar_t__ shown_dashes; scalar_t__ verbose_header; int /*<<< orphan*/  no_commit_id; scalar_t__ loginfo; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_ONELINE ; 
 int DIFF_FORMAT_DIFFSTAT ; 
 int DIFF_FORMAT_NO_OUTPUT ; 
 int DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*) ; 
 struct strbuf* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC9(struct rev_info *opt)
{
	opt->shown_dashes = 0;
	FUNC3(&opt->diffopt);

	if (FUNC2()) {
		int saved_fmt = opt->diffopt.output_format;
		opt->diffopt.output_format = DIFF_FORMAT_NO_OUTPUT;
		FUNC1(&opt->diffopt);
		opt->diffopt.output_format = saved_fmt;
		return 0;
	}

	if (opt->loginfo && !opt->no_commit_id) {
		FUNC7(opt);
		if ((opt->diffopt.output_format & ~DIFF_FORMAT_NO_OUTPUT) &&
		    opt->verbose_header &&
		    opt->commit_format != CMIT_FMT_ONELINE &&
		    !FUNC0(opt->commit_format)) {
			/*
			 * When showing a verbose header (i.e. log message),
			 * and not in --pretty=oneline format, we would want
			 * an extra newline between the end of log and the
			 * diff/diffstat output for readability.
			 */
			int pch = DIFF_FORMAT_DIFFSTAT | DIFF_FORMAT_PATCH;
			if (opt->diffopt.output_prefix) {
				struct strbuf *msg = NULL;
				msg = opt->diffopt.output_prefix(&opt->diffopt,
					opt->diffopt.output_prefix_data);
				FUNC5(msg->buf, msg->len, 1, opt->diffopt.file);
			}

			/*
			 * We may have shown three-dashes line early
			 * between generated commentary (notes, etc.)
			 * and the log message, in which case we only
			 * want a blank line after the commentary
			 * without (an extra) three-dashes line.
			 * Otherwise, we show the three-dashes line if
			 * we are showing the patch with diffstat, but
			 * in that case, there is no extra blank line
			 * after the three-dashes line.
			 */
			if (!opt->shown_dashes &&
			    (pch & opt->diffopt.output_format) == pch)
				FUNC4(opt->diffopt.file, "---");
			FUNC6('\n', opt->diffopt.file);
		}
	}
	FUNC1(&opt->diffopt);
	return 1;
}