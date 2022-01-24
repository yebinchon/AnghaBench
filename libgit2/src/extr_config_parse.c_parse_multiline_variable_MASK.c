#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  line_len; int /*<<< orphan*/  line; } ;
struct TYPE_4__ {TYPE_3__ ctx; } ;
typedef  TYPE_1__ git_config_parser ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char**,int*,char*,int) ; 

__attribute__((used)) static int FUNC7(git_config_parser *reader, git_buf *value, int in_quotes)
{
	int quote_count;
	bool multiline = true;

	while (multiline) {
		char *line = NULL, *proc_line = NULL;
		int error;

		/* Check that the next line exists */
		FUNC4(&reader->ctx);
		line = FUNC2(reader->ctx.line, reader->ctx.line_len);
		FUNC0(line);

		/*
		 * We've reached the end of the file, there is no continuation.
		 * (this is not an error).
		 */
		if (line[0] == '\0') {
			error = 0;
			goto out;
		}

		/* If it was just a comment, pretend it didn't exist */
		quote_count = FUNC5(line, !!in_quotes);
		if (line[0] == '\0')
			goto next;

		if ((error = FUNC6(&proc_line, &multiline,
					   line, in_quotes)) < 0)
			goto out;

		/* Add this line to the multiline var */
		if ((error = FUNC3(value, proc_line)) < 0)
			goto out;

next:
		FUNC1(line);
		FUNC1(proc_line);
		in_quotes = quote_count;
		continue;

out:
		FUNC1(line);
		FUNC1(proc_line);
		return error;
	}

	return 0;
}