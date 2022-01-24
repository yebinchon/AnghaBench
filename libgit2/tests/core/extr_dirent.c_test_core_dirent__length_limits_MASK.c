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
 int FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(void)
{
	char *big_filename = (char *)FUNC2(FILENAME_MAX + 1);
	FUNC3(big_filename, 'a', FILENAME_MAX + 1);
	big_filename[FILENAME_MAX] = 0;

	FUNC0(FUNC4(big_filename, 0666));

	FUNC1(big_filename);
}