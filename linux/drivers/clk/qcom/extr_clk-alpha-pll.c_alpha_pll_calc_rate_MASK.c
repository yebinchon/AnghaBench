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
typedef  unsigned long u64 ;
typedef  unsigned long u32 ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC1(u64 prate, u32 l, u32 a, u32 alpha_width)
{
	return (prate * l) + ((prate * a) >> FUNC0(alpha_width));
}