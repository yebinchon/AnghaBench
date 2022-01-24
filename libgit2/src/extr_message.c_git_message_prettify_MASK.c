#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (char const*,size_t) ; 
 char* FUNC5 (char const*,char,size_t const) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(git_buf *message_out, const char *message, int strip_comments, char comment_char)
{
	const size_t message_len = FUNC6(message);

	int consecutive_empty_lines = 0;
	size_t i, line_length, rtrimmed_line_length;
	char *next_newline;

	FUNC3(message_out);

	for (i = 0; i < FUNC6(message); i += line_length) {
		next_newline = FUNC5(message + i, '\n', message_len - i);

		if (next_newline != NULL) {
			line_length = next_newline - (message + i) + 1;
		} else {
			line_length = message_len - i;
		}

		if (strip_comments && line_length && message[i] == comment_char)
			continue;

		rtrimmed_line_length = FUNC4(message + i, line_length);

		if (!rtrimmed_line_length) {
			consecutive_empty_lines++;
			continue;
		}

		if (consecutive_empty_lines > 0 && message_out->size > 0)
			FUNC2(message_out, '\n');

		consecutive_empty_lines = 0;
		FUNC1(message_out, message + i, rtrimmed_line_length);
		FUNC2(message_out, '\n');
	}

	return FUNC0(message_out) ? -1 : 0;
}