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
struct kprobe {scalar_t__ addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct kprobe*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct kprobe*) ; 

int FUNC3(struct kprobe *p)
{
	if ((unsigned long) p->addr & 0x01)
		return -EINVAL;
	/* Make sure the probe isn't going on a difficult instruction */
	if (FUNC1(p->addr))
		return -EINVAL;
	if (FUNC2(p))
		return -ENOMEM;
	FUNC0(p);
	return 0;
}