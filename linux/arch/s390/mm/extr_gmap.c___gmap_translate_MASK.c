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
struct gmap {int /*<<< orphan*/  guest_to_host; } ;

/* Variables and functions */
 unsigned long EFAULT ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC1(struct gmap *gmap, unsigned long gaddr)
{
	unsigned long vmaddr;

	vmaddr = (unsigned long)
		FUNC0(&gmap->guest_to_host, gaddr >> PMD_SHIFT);
	/* Note: guest_to_host is empty for a shadow gmap */
	return vmaddr ? (vmaddr | (gaddr & ~PMD_MASK)) : -EFAULT;
}