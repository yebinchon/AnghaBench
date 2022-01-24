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
typedef  int gva_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(u32 sre, gva_t eaddr, bool primary)
{
	return ((eaddr & 0x0fffffff) >> 22) | (FUNC0(sre) << 7) |
	       (primary ? 0 : 0x40) | 0x80000000;
}