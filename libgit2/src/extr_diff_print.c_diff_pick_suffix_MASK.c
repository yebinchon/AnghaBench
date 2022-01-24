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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static char FUNC2(int mode)
{
	if (FUNC1(mode))
		return '/';
	else if (FUNC0(mode)) /* -V536 */
		/* in git, modes are very regular, so we must have 0100755 mode */
		return '*';
	else
		return ' ';
}