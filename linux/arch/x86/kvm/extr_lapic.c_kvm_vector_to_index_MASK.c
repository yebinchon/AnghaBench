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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long const*,int,int) ; 

int FUNC2(u32 vector, u32 dest_vcpus,
		       const unsigned long *bitmap, u32 bitmap_size)
{
	u32 mod;
	int i, idx = -1;

	mod = vector % dest_vcpus;

	for (i = 0; i <= mod; i++) {
		idx = FUNC1(bitmap, bitmap_size, idx + 1);
		FUNC0(idx == bitmap_size);
	}

	return idx;
}