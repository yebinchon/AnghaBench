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
 int /*<<< orphan*/  SEEK_SET ; 
 long FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 

long FUNC3(struct line_buffer *buf)
{
	long pos = FUNC2(buf->infile);
	if (pos < 0)
		return FUNC0("ftell error");
	if (FUNC1(buf->infile, 0, SEEK_SET))
		return FUNC0("seek error");
	return pos;
}