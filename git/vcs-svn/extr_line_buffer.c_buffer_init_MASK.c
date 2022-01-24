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
struct line_buffer {int /*<<< orphan*/  infile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  stdin ; 

int FUNC1(struct line_buffer *buf, const char *filename)
{
	buf->infile = filename ? FUNC0(filename, "r") : stdin;
	if (!buf->infile)
		return -1;
	return 0;
}