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
struct line_buffer {int dummy; } ;

/* Variables and functions */
 struct line_buffer LINE_BUFFER_INIT ; 
 scalar_t__ FUNC0 (struct line_buffer*) ; 
 scalar_t__ FUNC1 (struct line_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct line_buffer*,char const*) ; 
 char* FUNC3 (struct line_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct line_buffer*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int argc, const char **argv)
{
	struct line_buffer stdin_buf = LINE_BUFFER_INIT;
	struct line_buffer file_buf = LINE_BUFFER_INIT;
	struct line_buffer *input = &stdin_buf;
	const char *filename;
	char *s;

	if (argc == 1)
		filename = NULL;
	else if (argc == 2)
		filename = argv[1];
	else
		FUNC9("test-line-buffer [file | &fd] < script");

	if (FUNC2(&stdin_buf, NULL))
		FUNC5("open error");
	if (filename) {
		if (*filename == '&') {
			if (FUNC1(&file_buf, FUNC8(filename + 1)))
				FUNC5("error opening fd %s", filename + 1);
		} else {
			if (FUNC2(&file_buf, filename))
				FUNC5("error opening %s", filename);
		}
		input = &file_buf;
	}

	while ((s = FUNC3(&stdin_buf)))
		FUNC7(s, input);

	if (filename && FUNC0(&file_buf))
		FUNC4("error reading from %s", filename);
	if (FUNC0(&stdin_buf))
		FUNC4("input error");
	if (FUNC6(stdout))
		FUNC4("output error");
	return 0;
}