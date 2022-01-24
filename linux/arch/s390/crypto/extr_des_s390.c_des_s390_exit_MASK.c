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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ctrblk ; 
 size_t des_s390_algs_num ; 
 int /*<<< orphan*/ * des_s390_algs_ptr ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(void)
{
	while (des_s390_algs_num--)
		FUNC0(des_s390_algs_ptr[des_s390_algs_num]);
	if (ctrblk)
		FUNC1((unsigned long) ctrblk);
}