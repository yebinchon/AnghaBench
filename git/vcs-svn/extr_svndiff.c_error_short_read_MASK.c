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
 scalar_t__ FUNC0 (struct line_buffer*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct line_buffer *input)
{
	if (FUNC0(input))
		return FUNC2("error reading delta");
	return FUNC1("invalid delta: unexpected end of file");
}