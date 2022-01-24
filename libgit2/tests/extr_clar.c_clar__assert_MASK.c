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
 int /*<<< orphan*/  FUNC0 (char const*,size_t,char const*,char const*,int) ; 

void FUNC1(
	int condition,
	const char *file,
	size_t line,
	const char *error_msg,
	const char *description,
	int should_abort)
{
	if (condition)
		return;

	FUNC0(file, line, error_msg, description, should_abort);
}