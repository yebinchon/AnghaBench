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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct process_trailer_options {scalar_t__ in_place; int /*<<< orphan*/  only_trailers; int /*<<< orphan*/  only_input; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arg_head ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct process_trailer_options const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,struct process_trailer_options const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  trailers_tempfile ; 

void FUNC14(const char *file,
		      const struct process_trailer_options *opts,
		      struct list_head *new_trailer_head)
{
	FUNC0(head);
	struct strbuf sb = STRBUF_INIT;
	size_t trailer_end;
	FILE *outfile = stdout;

	FUNC4();

	FUNC11(&sb, file);

	if (opts->in_place)
		outfile = FUNC2(file);

	/* Print the lines before the trailers */
	trailer_end = FUNC9(outfile, sb.buf, &head, opts);

	if (!opts->only_input) {
		FUNC0(arg_head);
		FUNC8(&arg_head, new_trailer_head);
		FUNC10(&head, &arg_head);
	}

	FUNC7(outfile, &head, opts);

	FUNC5(&head);

	/* Print the lines after the trailers as is */
	if (!opts->only_trailers)
		FUNC6(sb.buf + trailer_end, 1, sb.len - trailer_end, outfile);

	if (opts->in_place)
		if (FUNC12(&trailers_tempfile, file))
			FUNC3(FUNC1("could not rename temporary file to %s"), file);

	FUNC13(&sb);
}