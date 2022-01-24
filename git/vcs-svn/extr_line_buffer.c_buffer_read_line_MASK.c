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
struct line_buffer {char* line_buffer; int /*<<< orphan*/  infile; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

char *FUNC3(struct line_buffer *buf)
{
	char *end;
	if (!FUNC1(buf->line_buffer, sizeof(buf->line_buffer), buf->infile))
		/* Error or data exhausted. */
		return NULL;
	end = buf->line_buffer + FUNC2(buf->line_buffer);
	if (end[-1] == '\n')
		end[-1] = '\0';
	else if (FUNC0(buf->infile))
		; /* No newline at end of file.  That's fine. */
	else
		/*
		 * Line was too long.
		 * There is probably a saner way to deal with this,
		 * but for now let's return an error.
		 */
		return NULL;
	return buf->line_buffer;
}