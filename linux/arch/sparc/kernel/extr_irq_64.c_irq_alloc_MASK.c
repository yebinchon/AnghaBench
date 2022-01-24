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
 int FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

unsigned int FUNC2(unsigned int dev_handle, unsigned int dev_ino)
{
	int irq;

	irq = FUNC0(-1, 1, 1, FUNC1(), NULL, NULL);
	if (irq <= 0)
		goto out;

	return irq;
out:
	return 0;
}