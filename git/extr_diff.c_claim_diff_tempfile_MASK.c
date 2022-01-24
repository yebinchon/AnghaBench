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
struct diff_tempfile {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct diff_tempfile*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct diff_tempfile* diff_temp ; 

__attribute__((used)) static struct diff_tempfile *FUNC2(void)
{
	int i;
	for (i = 0; i < FUNC0(diff_temp); i++)
		if (!diff_temp[i].name)
			return diff_temp + i;
	FUNC1("diff is failing to clean up its tempfiles");
}