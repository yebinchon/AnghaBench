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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(const char *buffer, size_t len)
{
	static const size_t LINE_WIDTH = 16;

	size_t line_count, last_line, i, j;
	const char *line;

	line_count = (len / LINE_WIDTH);
	last_line = (len % LINE_WIDTH);

	for (i = 0; i < line_count; ++i) {
		line = buffer + (i * LINE_WIDTH);
		for (j = 0; j < LINE_WIDTH; ++j, ++line)
			FUNC0("%02X ", (unsigned char)*line & 0xFF);

		FUNC0("| ");

		line = buffer + (i * LINE_WIDTH);
		for (j = 0; j < LINE_WIDTH; ++j, ++line)
			FUNC0("%c", (*line >= 32 && *line <= 126) ? *line : '.');

		FUNC0("\n");
	}

	if (last_line > 0) {

		line = buffer + (line_count * LINE_WIDTH);
		for (j = 0; j < last_line; ++j, ++line)
			FUNC0("%02X ", (unsigned char)*line & 0xFF);

		for (j = 0; j < (LINE_WIDTH - last_line); ++j)
			FUNC0("	");

		FUNC0("| ");

		line = buffer + (line_count * LINE_WIDTH);
		for (j = 0; j < last_line; ++j, ++line)
			FUNC0("%c", (*line >= 32 && *line <= 126) ? *line : '.');

		FUNC0("\n");
	}

	FUNC0("\n");
}