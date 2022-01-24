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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * disk_events_strs ; 
 int FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(unsigned int events, char *buf)
{
	const char *delim = "";
	ssize_t pos = 0;
	int i;

	for (i = 0; i < FUNC0(disk_events_strs); i++)
		if (events & (1 << i)) {
			pos += FUNC1(buf + pos, "%s%s",
				       delim, disk_events_strs[i]);
			delim = " ";
		}
	if (pos)
		pos += FUNC1(buf + pos, "\n");
	return pos;
}