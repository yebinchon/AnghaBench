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
typedef  int /*<<< orphan*/  u64 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 unsigned long L1_CACHE_BYTES ; 
 unsigned long PAGE_SIZE ; 
 unsigned long UVH_RTC ; 
 unsigned long FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static u64 FUNC3(struct clocksource *cs)
{
	unsigned long offset;

	if (FUNC1() == 1)
		offset = 0;
	else
		offset = (FUNC0() * L1_CACHE_BYTES) % PAGE_SIZE;

	return (u64)FUNC2(UVH_RTC | offset);
}