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
struct timespec64 {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int STORE_CLOCK_EXT_SIZE ; 
 scalar_t__ TOD_UNIX_EPOCH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ initial_leap_seconds ; 

void FUNC2(struct timespec64 *ts)
{
	unsigned char clk[STORE_CLOCK_EXT_SIZE];
	__u64 delta;

	delta = initial_leap_seconds + TOD_UNIX_EPOCH;
	FUNC1(clk);
	*(__u64 *) &clk[1] -= delta;
	if (*(__u64 *) &clk[1] > delta)
		clk[0]--;
	FUNC0(clk, ts);
}