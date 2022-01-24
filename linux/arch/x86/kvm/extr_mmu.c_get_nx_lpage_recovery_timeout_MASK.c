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
typedef  long u64 ;

/* Variables and functions */
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  nx_huge_pages ; 
 int /*<<< orphan*/  nx_huge_pages_recovery_ratio ; 

__attribute__((used)) static long FUNC2(u64 start_time)
{
	return FUNC0(nx_huge_pages) && FUNC0(nx_huge_pages_recovery_ratio)
		? start_time + 60 * HZ - FUNC1()
		: MAX_SCHEDULE_TIMEOUT;
}