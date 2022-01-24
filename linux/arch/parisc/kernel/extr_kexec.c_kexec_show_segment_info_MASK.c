#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kimage {TYPE_1__* segment; } ;
struct TYPE_2__ {scalar_t__ memsz; scalar_t__ mem; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,scalar_t__,scalar_t__,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC1(const struct kimage *kimage,
				    unsigned long n)
{
	FUNC0("    segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
			n,
			kimage->segment[n].mem,
			kimage->segment[n].mem + kimage->segment[n].memsz,
			(unsigned long)kimage->segment[n].memsz,
			(unsigned long)kimage->segment[n].memsz /  PAGE_SIZE);
}