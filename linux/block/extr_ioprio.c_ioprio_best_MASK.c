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
 int /*<<< orphan*/  IOPRIO_CLASS_BE ; 
 int /*<<< orphan*/  IOPRIO_NORM ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int FUNC2 (unsigned short,unsigned short) ; 

int FUNC3(unsigned short aprio, unsigned short bprio)
{
	if (!FUNC1(aprio))
		aprio = FUNC0(IOPRIO_CLASS_BE, IOPRIO_NORM);
	if (!FUNC1(bprio))
		bprio = FUNC0(IOPRIO_CLASS_BE, IOPRIO_NORM);

	return FUNC2(aprio, bprio);
}