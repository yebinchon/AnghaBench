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
struct mce {int cs; int /*<<< orphan*/  ip; int /*<<< orphan*/  mcgstatus; } ;

/* Variables and functions */
 int IN_KERNEL ; 
 int IN_KERNEL_RECOV ; 
 int IN_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mce *m)
{
	if ((m->cs & 3) == 3)
		return IN_USER;
	if (FUNC1(m->mcgstatus) && FUNC0(m->ip))
		return IN_KERNEL_RECOV;
	return IN_KERNEL;
}