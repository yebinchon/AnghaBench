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
typedef  unsigned long long u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static inline u32 FUNC1(u32 usec)
{
	return FUNC0(32768ULL * (u64)usec, 1000000ULL);
}