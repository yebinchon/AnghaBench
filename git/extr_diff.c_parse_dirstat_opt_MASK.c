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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct diff_options {int /*<<< orphan*/  output_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_DIRSTAT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct diff_options*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(struct diff_options *options, const char *params)
{
	struct strbuf errmsg = STRBUF_INIT;
	if (FUNC2(options, params, &errmsg))
		FUNC1(FUNC0("Failed to parse --dirstat/-X option parameter:\n%s"),
		    errmsg.buf);
	FUNC3(&errmsg);
	/*
	 * The caller knows a dirstat-related option is given from the command
	 * line; allow it to say "return this_function();"
	 */
	options->output_format |= DIFF_FORMAT_DIRSTAT;
	return 1;
}