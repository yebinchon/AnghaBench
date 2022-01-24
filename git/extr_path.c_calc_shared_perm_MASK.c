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
 int S_IWUSR ; 
 int S_IXUSR ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(int mode)
{
	int tweak;

	if (FUNC0() < 0)
		tweak = -FUNC0();
	else
		tweak = FUNC0();

	if (!(mode & S_IWUSR))
		tweak &= ~0222;
	if (mode & S_IXUSR)
		/* Copy read bits to execute bits */
		tweak |= (tweak & 0444) >> 2;
	if (FUNC0() < 0)
		mode = (mode & ~0777) | tweak;
	else
		mode |= tweak;

	return mode;
}