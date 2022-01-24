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
struct diffstat_t {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct TYPE_2__ {int has_changes; scalar_t__ diff_from_contents; scalar_t__ exit_with_status; scalar_t__ dirstat_by_line; } ;
struct diff_options {int output_format; int close_file; TYPE_1__ flags; scalar_t__ found_changes; int /*<<< orphan*/  file; int /*<<< orphan*/  format_callback_data; int /*<<< orphan*/  (* format_callback ) (struct diff_queue_struct*,struct diff_options*,int /*<<< orphan*/ ) ;scalar_t__ stat_sep; scalar_t__ color_moved; } ;
struct diff_filepair {int dummy; } ;

/* Variables and functions */
 int DIFF_FORMAT_CALLBACK ; 
 int DIFF_FORMAT_CHECKDIFF ; 
 int DIFF_FORMAT_DIFFSTAT ; 
 int DIFF_FORMAT_DIRSTAT ; 
 int DIFF_FORMAT_NAME ; 
 int DIFF_FORMAT_NAME_STATUS ; 
 int DIFF_FORMAT_NO_OUTPUT ; 
 int DIFF_FORMAT_NUMSTAT ; 
 int DIFF_FORMAT_PATCH ; 
 int DIFF_FORMAT_RAW ; 
 int DIFF_FORMAT_SHORTSTAT ; 
 int DIFF_FORMAT_SUMMARY ; 
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  DIFF_SYMBOL_SEPARATOR ; 
 int /*<<< orphan*/  DIFF_SYMBOL_STAT_SEP ; 
 scalar_t__ FUNC1 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filepair*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_filepair*,struct diff_options*,struct diffstat_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_filepair*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC6 (struct diff_options*,struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct diff_filepair*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC10 (struct diff_filepair**) ; 
 int /*<<< orphan*/  FUNC11 (struct diffstat_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct diffstat_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC15 (struct diffstat_t*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC16 (struct diffstat_t*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC17 (struct diffstat_t*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC18 (struct diffstat_t*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC19 (struct diff_queue_struct*,struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 

void FUNC21(struct diff_options *options)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	int i, output_format = options->output_format;
	int separator = 0;
	int dirstat_by_line = 0;

	/*
	 * Order: raw, stat, summary, patch
	 * or:    name/name-status/checkdiff (other bits clear)
	 */
	if (!q->nr)
		goto free_queue;

	if (output_format & (DIFF_FORMAT_RAW |
			     DIFF_FORMAT_NAME |
			     DIFF_FORMAT_NAME_STATUS |
			     DIFF_FORMAT_CHECKDIFF)) {
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC1(p))
				FUNC9(p, options);
		}
		separator++;
	}

	if (output_format & DIFF_FORMAT_DIRSTAT && options->flags.dirstat_by_line)
		dirstat_by_line = 1;

	if (output_format & (DIFF_FORMAT_DIFFSTAT|DIFF_FORMAT_SHORTSTAT|DIFF_FORMAT_NUMSTAT) ||
	    dirstat_by_line) {
		struct diffstat_t diffstat;

		FUNC13(&diffstat, 0, sizeof(struct diffstat_t));
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC1(p))
				FUNC4(p, options, &diffstat);
		}
		if (output_format & DIFF_FORMAT_NUMSTAT)
			FUNC16(&diffstat, options);
		if (output_format & DIFF_FORMAT_DIFFSTAT)
			FUNC18(&diffstat, options);
		if (output_format & DIFF_FORMAT_SHORTSTAT)
			FUNC17(&diffstat, options);
		if (output_format & DIFF_FORMAT_DIRSTAT && dirstat_by_line)
			FUNC15(&diffstat, options);
		FUNC11(&diffstat);
		separator++;
	}
	if ((output_format & DIFF_FORMAT_DIRSTAT) && !dirstat_by_line)
		FUNC14(options);

	if (output_format & DIFF_FORMAT_SUMMARY && !FUNC12(q)) {
		for (i = 0; i < q->nr; i++) {
			FUNC6(options, q->queue[i]);
		}
		separator++;
	}

	if (output_format & DIFF_FORMAT_NO_OUTPUT &&
	    options->flags.exit_with_status &&
	    options->flags.diff_from_contents) {
		/*
		 * run diff_flush_patch for the exit status. setting
		 * options->file to /dev/null should be safe, because we
		 * aren't supposed to produce any output anyway.
		 */
		if (options->close_file)
			FUNC8(options->file);
		options->file = FUNC20("/dev/null", "w");
		options->close_file = 1;
		options->color_moved = 0;
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC1(p))
				FUNC2(p, options);
			if (options->found_changes)
				break;
		}
	}

	if (output_format & DIFF_FORMAT_PATCH) {
		if (separator) {
			FUNC7(options, DIFF_SYMBOL_SEPARATOR, NULL, 0, 0);
			if (options->stat_sep)
				/* attach patch instead of inline */
				FUNC7(options, DIFF_SYMBOL_STAT_SEP,
						 NULL, 0, 0);
		}

		FUNC3(options);
	}

	if (output_format & DIFF_FORMAT_CALLBACK)
		options->format_callback(q, options, options->format_callback_data);

	for (i = 0; i < q->nr; i++)
		FUNC5(q->queue[i]);
free_queue:
	FUNC10(q->queue);
	FUNC0(q);
	if (options->close_file)
		FUNC8(options->file);

	/*
	 * Report the content-level differences with HAS_CHANGES;
	 * diff_addremove/diff_change does not set the bit when
	 * DIFF_FROM_CONTENTS is in effect (e.g. with -w).
	 */
	if (options->flags.diff_from_contents) {
		if (options->found_changes)
			options->flags.has_changes = 1;
		else
			options->flags.has_changes = 0;
	}
}