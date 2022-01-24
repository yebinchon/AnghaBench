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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline uint64_t FUNC2(uint64_t base, int offset,
					       int size)
{
	base = (1ull << 63) | (base + offset);
	switch (size) {
	case 4:
		return FUNC0(base);
	case 8:
		return FUNC1(base);
	default:
		return 0;
	}
}