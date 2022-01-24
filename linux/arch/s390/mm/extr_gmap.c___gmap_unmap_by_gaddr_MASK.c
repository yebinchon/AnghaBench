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
 unsigned long PMD_SHIFT ; 
 int FUNC0 (struct gmap*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct gmap *gmap, unsigned long gaddr)
{
	unsigned long vmaddr;

	vmaddr = (unsigned long) FUNC1(&gmap->guest_to_host,
						   gaddr >> PMD_SHIFT);
	return vmaddr ? FUNC0(gmap, vmaddr) : 0;
}