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
 int EINVAL ; 
 char FUNC0 (int /*<<< orphan*/ *,char) ; 
 unsigned int tx_7segled_num ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char) ; 
 int /*<<< orphan*/  txx9_seg7map ; 

int FUNC2(unsigned int pos, char c)
{
	if (pos >= tx_7segled_num)
		return -EINVAL;
	c = FUNC0(&txx9_seg7map, c);
	if (c < 0)
		return c;
	FUNC1(pos, c);
	return 0;
}