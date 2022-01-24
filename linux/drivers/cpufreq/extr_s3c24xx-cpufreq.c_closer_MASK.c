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
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static inline int FUNC1(unsigned int target, unsigned int n, unsigned int c)
{
	int diff_cur = FUNC0(target - c);
	int diff_new = FUNC0(target - n);

	return (diff_new < diff_cur);
}