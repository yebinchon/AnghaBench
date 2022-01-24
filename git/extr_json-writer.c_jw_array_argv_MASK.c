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
struct json_writer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct json_writer*,int /*<<< orphan*/ ) ; 

void FUNC1(struct json_writer *jw, const char **argv)
{
	while (*argv)
		FUNC0(jw, *argv++);
}