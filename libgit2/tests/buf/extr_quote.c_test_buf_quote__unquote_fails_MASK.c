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
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(void)
{
	FUNC0("no quotes at all");
	FUNC0("\"no trailing quote");
	FUNC0("no leading quote\"");
	FUNC0("\"invalid \\z escape char\"");
	FUNC0("\"\\q invalid escape char\"");
	FUNC0("\"invalid escape char \\p\"");
	FUNC0("\"invalid \\1 escape char \"");
	FUNC0("\"invalid \\14 escape char \"");
	FUNC0("\"invalid \\280 escape char\"");
	FUNC0("\"invalid \\378 escape char\"");
	FUNC0("\"invalid \\380 escape char\"");
	FUNC0("\"invalid \\411 escape char\"");
	FUNC0("\"truncated escape char \\\"");
	FUNC0("\"truncated escape char \\0\"");
	FUNC0("\"truncated escape char \\01\"");
}