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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	FUNC2();

	g_repo = FUNC1("empty_standard_repo");

	FUNC0(
		"empty_standard_repo/.gitattributes",
		"hero* bitflip reverse\n"
		"herofile text\n"
		"heroflip -reverse binary\n"
		"villain erroneous\n"
		"*.bin binary\n");
}