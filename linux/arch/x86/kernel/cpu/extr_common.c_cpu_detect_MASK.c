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
typedef  int u32 ;
struct cpuinfo_x86 {int cpuid_level; int x86; int x86_clflush_size; int x86_cache_alignment; int /*<<< orphan*/  x86_stepping; int /*<<< orphan*/  x86_model; int /*<<< orphan*/ * x86_vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct cpuinfo_x86 *c)
{
	/* Get vendor name */
	FUNC0(0x00000000, (unsigned int *)&c->cpuid_level,
	      (unsigned int *)&c->x86_vendor_id[0],
	      (unsigned int *)&c->x86_vendor_id[8],
	      (unsigned int *)&c->x86_vendor_id[4]);

	c->x86 = 4;
	/* Intel-defined flags: level 0x00000001 */
	if (c->cpuid_level >= 0x00000001) {
		u32 junk, tfms, cap0, misc;

		FUNC0(0x00000001, &tfms, &misc, &junk, &cap0);
		c->x86		= FUNC1(tfms);
		c->x86_model	= FUNC2(tfms);
		c->x86_stepping	= FUNC3(tfms);

		if (cap0 & (1<<19)) {
			c->x86_clflush_size = ((misc >> 8) & 0xff) * 8;
			c->x86_cache_alignment = c->x86_clflush_size;
		}
	}
}